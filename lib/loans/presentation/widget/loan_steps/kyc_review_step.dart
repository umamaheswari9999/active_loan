import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/presentation/bloc/download_attachment/download_attachment_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan/new_loan_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action_cubit.dart';
import 'package:active_loan/shared/string_utils.dart';
import 'package:active_loan/shared/widget/loading_widget.dart';
import 'package:active_loan/shared/widget/primary_button.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KycReviewStepWidget extends StatefulWidget {
  const KycReviewStepWidget({Key? key}) : super(key: key);

  @override
  State<KycReviewStepWidget> createState() => _KycReviewStepWidgetState();
}

class _KycReviewStepWidgetState extends State<KycReviewStepWidget> {
  @override
  void initState() {
    super.initState();
    var customer = BlocProvider.of<NewLoanCubit>(context).state.customer;
    if (customer != null) {
      BlocProvider.of<DownloadAttachmentCubit>(context).fetchDownloadAttachment(
          customer.master.id, Constants.kycPhotographName, Entities.clientMaster);
    }
  }

  @override
  Widget build(BuildContext context) {
    var customer = BlocProvider.of<NewLoanCubit>(context).state.customer;

    if (customer == null) {
      return const Text('Please complete previous step to continue');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading:
              BlocBuilder<DownloadAttachmentCubit, DownloadAttachmentState>(
            builder: (ctx, state) {
              return state.maybeWhen(
                success: (data, fileName) {
                  return Image.memory(data, width: 64, height: 64);
                },
                orElse: () => const Icon(FeatherIcons.user),
              );
            },
          ),
          title: Text(customer.master.name),
          subtitle: Text(
              'AADHAAR: ${StringUtils.getMaskedAadhaar(customer.master.aadharNumber ?? '')}'),
          trailing: Text(
            (customer.master.gender == 'M'
                    ? 'Male'
                    : customer.master.gender == 'F'
                        ? 'Female'
                        : '')
                .toUpperCase(),
          ),
        ),
        if (customer.locations.isNotEmpty &&
            customer.locations[0].permanentAddress != null) ...[
          Text('Permanent Address'.toUpperCase(),
              style: Theme.of(context).textTheme.caption),
          const SizedBox(height: 6),
          Text(
              '${customer.locations[0].permanentAddress!.addressLine1}, ${customer.locations[0].permanentAddress!.addressLine2}'),
          const SizedBox(height: 2),
          Text(
              '${customer.locations[0].permanentAddress!.stateName}, ${customer.locations[0].permanentAddress!.countryName}'),
          const SizedBox(height: 2),
          Text(
              '${customer.locations[0].permanentAddress!.cityName}, ${customer.locations[0].permanentAddress!.postalCode}'),
        ],
        const SizedBox(height: 8),
        const Divider(indent: 64),
        if (customer.locations.isNotEmpty &&
            customer.locations[0].currentAddress != null) ...[
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Current Address'.toUpperCase(),
                        style: Theme.of(context).textTheme.caption),
                    const SizedBox(height: 6),
                    Text(
                        '${customer.locations[0].currentAddress!.addressLine1}, ${customer.locations[0].currentAddress!.addressLine2}'),
                    const SizedBox(height: 2),
                    Text(
                        '${customer.locations[0].currentAddress!.stateName}, ${customer.locations[0].currentAddress!.countryName}'),
                    const SizedBox(height: 2),
                    Text(
                        '${customer.locations[0].currentAddress!.cityName}, ${customer.locations[0].currentAddress!.postalCode}'),
                  ],
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 16),
        BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
          listener: (ctx, state) {
            state.maybeWhen(
              success: (action, data) {
                if (action == NewLoanAction.completeKycReview) {
                  if (data != null && data['loan'] != null) {
                    var data2 = data['loan'] as PreEnquiryForm;
                    BlocProvider.of<NewLoanCubit>(context)
                        .moveToNextStep(form: data2);
                  }
                }
              },
              orElse: () {},
            );
          },
          builder: (ctx, state) {
            bool isLoading = false;
            state.maybeWhen(
              orElse: () {},
              loading: (action) => isLoading = true,
            );

            if (isLoading) {
              return const LoadingWidget();
            }

            return PrimaryButton(
              text: 'Continue'.toUpperCase(),
              elevation: 0.0,
              padding: const EdgeInsets.all(12.0),
              onPressed: () {
                var newLoanState = BlocProvider.of<NewLoanCubit>(context).state;

                if (newLoanState.form != null &&
                    newLoanState.customer != null &&
                    newLoanState.customer!.locations.isNotEmpty &&
                    newLoanState.customer!.locations[0].currentAddress !=
                        null &&
                    newLoanState.customer!.locations[0].permanentAddress !=
                        null) {
                  var loanId = newLoanState.form!.id;
                  var location = newLoanState.customer!.locations[0];
                  BlocProvider.of<NewLoanActionCubit>(context)
                      .completeKycReview(
                          loanId,
                          newLoanState.customer!,
                          location.permanentAddress!.id,
                          location.currentAddress!.id);
                }
              },
            );
          },
        ),
      ],
    );
  }
}
