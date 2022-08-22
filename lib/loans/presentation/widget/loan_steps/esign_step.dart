import 'dart:developer';
import 'package:active_loan/di/injection.dart';
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan/new_loan_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action_cubit.dart';
import 'package:active_loan/shared/context_utils.dart';
import 'package:active_loan/shared/launcher_utils.dart';
import 'package:active_loan/shared/model/app_static_data.dart';
import 'package:active_loan/shared/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter_share/flutter_share.dart';

class ESignStepWidget extends StatelessWidget {
  const ESignStepWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = const EdgeInsets.all(12.0);
    var elevation = 0.0;
    var enquiryForm = BlocProvider.of<NewLoanCubit>(context).state.enquiryForm;

    if (enquiryForm == null) {
      return const Center(
        child: Text('No enquiry form found for this loan.'),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'To proceed further to disburse the loan customer has to sign the application document.',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 12),
        BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
          listener: (ctx, state) {
            state.maybeWhen(
              success: (action, data) {
                if ((action == NewLoanAction.sendSignLink ||
                        action == NewLoanAction.resendESignLink) &&
                    data != null) {
                  var loanData = data['loan']
                      as dartz.Tuple2<PreEnquiryForm, PreEnquiryForm>;
                  var preEnquiry = loanData.value1;
                  var enquiry = loanData.value2;

                  BlocProvider.of<NewLoanCubit>(context).updateForms(
                    form: preEnquiry,
                    enquiryForm: enquiry,
                  );

                  showSnackbar(context, 'Process completed successfully');
                  BlocProvider.of<NewLoanCubit>(context).refreshFormAndCustomer(
                      preEnquiry.preEnquiryNumber, preEnquiry.pan!);
                }
              },
              failure: (action, f) {
                if (action == NewLoanAction.sendSignLink ||
                    action == NewLoanAction.resendESignLink) {

                  log(f.toString());

                  f.maybeWhen(
                    orElse: () {
                      showSnackbar(context, 'Uh oh. Something went wrong.');
                    },
                    serverFailure: (code, error) {
                      showSnackbar(context, error);
                    }
                  );
                }
              },
              orElse: () {},
            );
          },
          builder: (ctx, state) {
            bool isLoading = false;
            state.maybeWhen(
              orElse: () {},
              loading: (action) =>
                  isLoading = action == NewLoanAction.sendSignLink,
            );

            if (isLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(strokeWidth: 2.0),
              );
            }

            return BlocBuilder<NewLoanCubit, NewLoanState>(
              builder: (ctx, newLoanState) {
                var eSignStatus = newLoanState.enquiryForm?.eSignStatus;
                var isRejected = eSignStatus == Constants.eSignStatusRejected;

                if (isRejected) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      children: const [
                        Icon(Icons.cancel_outlined, color: Colors.red),
                        SizedBox(width: 16),
                        Expanded(
                            child: Text(
                                'Your eSign has been rejected. Please re-initiate again.')),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: _buildESignButton(context),
                    ),
                  );
                }

                if ((newLoanState.enquiryForm!.eSignUrl != null) ||
                    newLoanState.enquiryForm!.eSignUrl != null) {
                  var isApproved = eSignStatus != null &&
                      eSignStatus.isNotEmpty &&
                      eSignStatus == Constants.eSignStatusApproved;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: isApproved
                            ? const Icon(
                                Icons.verified_rounded,
                                color: Colors.green,
                              )
                            : isRejected
                                ? const Icon(Icons.clear, color: Colors.red)
                                : const Icon(Icons.access_time,
                                    color: Colors.orange),
                        title: Text(
                          isApproved
                              ? 'eSign is Approved'
                              : 'eSign link sent successfully. Waiting for eSign completion.',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        subtitle: isApproved
                            ? null
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  InkWell(
                                    child: Text(
                                      newLoanState.enquiryForm?.eSignUrl ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    onTap: () {
                                      _openUrl(newLoanState);
                                    },
                                  ),
                                ],
                              ),
                        trailing: IconButton(
                          onPressed: () => _shareUrl(newLoanState),
                          icon: const Icon(Icons.share),
                        ),
                      ),
                      if (!isApproved) ...[
                        const SizedBox(height: 6),
                        PrimaryButton(
                          text: 'RESEND LINK',
                          padding: padding,
                          elevation: elevation,
                          primary: Theme.of(context).colorScheme.inversePrimary,
                          onPressed: () {
                            _callESignProcess(
                                context, Constants.eSignActionResend);
                          },
                        ),
                        const SizedBox(height: 4),
                        PrimaryButton(
                          text: 'CHECK STATUS',
                          padding: padding,
                          elevation: elevation,
                          onPressed: () {
                            _callESignProcess(context, 'CHECK_STATUS');
                          },
                        ),
                      ],
                    ],
                  );
                }

                return _buildESignButton(context);
              },
            );
          },
        )
      ],
    );
  }

  PrimaryButton _buildESignButton(BuildContext context) {
    return PrimaryButton(
      text: 'INITIATE E-SIGN',
      padding: const EdgeInsets.all(12.0),
      elevation: 0,
      onPressed: () {
        _callESignProcess(context, '');
      },
    );
  }

  void _callESignProcess(BuildContext context, String action) {
    var enquiryId =
        BlocProvider.of<NewLoanCubit>(context).state.enquiryForm!.id;
    var preEnquiryId = BlocProvider.of<NewLoanCubit>(context).state.form!.id;
    BlocProvider.of<NewLoanActionCubit>(context)
        .sendESignLink(enquiryId, preEnquiryId, action);
  }

  void _openUrl(NewLoanState newLoanState) {
    var eSignUrl = newLoanState.enquiryForm?.eSignUrl;
    if (eSignUrl != null) {
      launchUrlExternal(eSignUrl);
    }
  }

  void _shareUrl(NewLoanState newLoanState) async {
    var eSignUrl = newLoanState.enquiryForm?.eSignUrl;
    var details = locator.get<AppStaticData>();
    if (eSignUrl != null) {
      var message =
          'Dear ${newLoanState.enquiryForm?.customerName}\nThank you for choosing Ezfinanz.\nYou can complete your authentication on ESign by clicking on the link below!\nFor more information or any query,please email us at ${details.contactUsEmail}.Call Support,${details.contactUsNumber}';
      await FlutterShare.share(
          title: 'Share eSign URL',
          text: message,
          linkUrl: eSignUrl,
          chooserTitle: 'Share via');
    }
  }
}
