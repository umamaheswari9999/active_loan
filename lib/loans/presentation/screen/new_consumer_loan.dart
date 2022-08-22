import 'dart:developer';

import 'package:dartz/dartz.dart' as dartz;
import 'package:active_loan/features/panValidation/presentation/widget/input_field.dart';
import 'package:active_loan/features/panValidation/presentation/widget/pan_input_field.dart';
import 'package:active_loan/loans/domain/entity/customer.dart';
import 'package:active_loan/loans/domain/entity/pre_enquiry_form.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan/new_loan_cubit.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action.dart';
import 'package:active_loan/loans/presentation/bloc/new_loan_actions/new_loan_action_cubit.dart';
import 'package:active_loan/shared/context_utils.dart';
import 'package:active_loan/shared/logger.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../features/kycVerificationndDetails/domain/staticData.dart';
import '../../../shared/widget/primary_button.dart';
import '../widget/choice_chip_list_widget.dart';
import '../widget/utils/screen_utils.dart';

class NewConsumerLoan extends StatefulWidget {
  const NewConsumerLoan({Key? key}) : super(key: key);

  @override
  State<NewConsumerLoan> createState() => _NewConsumerLoanState();
}

class _NewConsumerLoanState extends State<NewConsumerLoan> {
  final TextEditingController _panCotroller = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _aadhaarController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  DateTime? _dob;
  String? _gender;
  bool _isFirstTimeCustomer = false;
  bool _loanExists = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: BlocListener<NewLoanActionCubit, NewLoanActionState>(
        listener: (ctx, state) {
          state.maybeWhen(
            success: (action, data) {
              if (action == NewLoanAction.existingLoanCheck) {
                if (data != null && data['data'] != null) {
                  var data2 =
                      data['data'] as dartz.Tuple2<PreEnquiryForm?, Customer?>;
                  var preEnquiry = data2.value1;
                  var customer = data2.value2;

                  BlocProvider.of<NewLoanCubit>(context).setCustomer(customer);

                  if (preEnquiry != null) {
                    _dobController.text = preEnquiry.dob != null
                        ? DateFormat.yMEd()
                            .format(DateTime.parse(preEnquiry.dob!))
                        : '';
                    _mobileController.text = preEnquiry.mobileNumber ?? '';
                    BlocProvider.of<NewLoanCubit>(context)
                        .setLoanDetails(preEnquiry);

                    setState(() {
                      _loanExists = true;
                      _isFirstTimeCustomer = false;
                    });
                  } else if (customer != null) {
                    _nameController.text = customer.master.name;
                    _aadhaarController.text =
                        customer.master.aadharNumber ?? '';

                    if (customer.master.dob != null) {
                      var dateOfBirth =
                          DateFormat("yyyy-MM-dd").parse(customer.master.dob!);
                      _dob = dateOfBirth;
                      _dobController.text =
                          DateFormat.yMEd().format(dateOfBirth);
                    }

                    _mobileController.text = customer.master.mobile ?? '';
                    _gender = customer.master.gender;

                    setState(() {
                      _loanExists = false;
                      _isFirstTimeCustomer = true;
                    });
                  } else {
                    setState(() {
                      _loanExists = false;
                      _isFirstTimeCustomer = true;
                    });
                  }
                } else {
                  setState(() {
                    _loanExists = false;
                    _isFirstTimeCustomer = true;
                  });
                }
              } else if (action == NewLoanAction.createBasicPreEnquiry) {
                if (data != null && data['loan'] != null) {
                  var data2 = data['loan'] as PreEnquiryForm;
                  _goToStepDecider(context, data2);
                }
              }
            },
            failure: (_, f) {
              devLog(f.toString());

              f.maybeWhen(
                unAuthorized: () {
                  showSnackbar(context, 'Unauthorized');
                },
                noInternet: () {
                  showSnackbar(context, 'Please check your internet');
                },
                unknownFailure: () {
                  showSnackbar(context, 'Uh oh. some unknown issue occurred');
                },
                serverFailure: (code, message) {
                  showSnackbar(context, message);
                },
                invalidFieldValue: (message) {
                  showSnackbar(context, message!);
                },
                orElse: () {
                  showSnackbar(context, 'Something went wrong');
                },
              );
            },
            orElse: () {},
          );
        },
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s Get Started',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                const Text(
                  'To continue, please enter customer details',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                PANInputFieldWidget(
                  controller: _panCotroller,
                  hintText: 'PAN',
                  maxLength: 10,
                  title: 'PAN',
                  prefixIcon: const Icon(FeatherIcons.code),
                  onChanged: (value) {
                    if (value.length == 10) {
                      BlocProvider.of<NewLoanActionCubit>(context)
                          .checkIfLoanExists(value);
                    }
                  },
                  onSubmit: (_) {},
                ),
                const SizedBox(height: 12),
                if (_isFirstTimeCustomer) ...[
                  InputField(
                    controller: _nameController,
                    hintText: 'Customer Name',
                    prefixIcon: const Icon(FeatherIcons.code),
                    onChanged: (value) {}, keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 12),
                  ChoiceChoiceListWidget(
                    title: 'Gender',
                    items: StaticData.genders,
                    dropdownViewStyle: false,
                    onSelected: (value) => _gender = value,
                    defaultSelection: _gender,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    controller: _aadhaarController,
                    hintText: 'Aadhaar Number',
                    prefixIcon: const Icon(FeatherIcons.code),
                    onChanged: (value) {},
                    maxLength: 12,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                ],
                InputField(
                  controller: _dobController,
                  hintText: 'Date of birth',
                  prefixIcon: const Icon(FeatherIcons.calendar),
                  onChanged: (value) {},
                  onTap: () {
                    showDatePicker(
                      context: context,
                      fieldHintText: 'dd/mm/yyyy',
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now()
                          .subtract(const Duration(days: 365 * 80)),
                      lastDate: DateTime.now(),
                    ).then((value) {
                      if (value != null) {
                        _dobController.text = DateFormat.yMEd().format(value);
                        _dob = value;
                      }
                    });
                  },
                  readOnly: true,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 12),
                InputField(
                  controller: _mobileController,
                  hintText: 'Mobile Number',
                  prefixIcon: const Icon(FeatherIcons.phone),
                  onChanged: (value) {},
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                ),
                if (_loanExists) ...[
                  const SizedBox(height: 12),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    tileColor: Theme.of(context).colorScheme.secondary,
                    leading: const Icon(FeatherIcons.alertTriangle),
                    title: Text(
                        'There is already a loan in progress with ${_panCotroller.text}. Do you want to continue?'),
                  ),
                ],
                const SizedBox(height: 24),
                BlocBuilder<NewLoanActionCubit, NewLoanActionState>(
                  builder: (ctx, state) {
                    return state.maybeWhen(
                      loading: (action) => const Center(
                          child: CircularProgressIndicator.adaptive()),
                      orElse: () => _buildContinueButton(context),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _goToStepDecider(BuildContext context, PreEnquiryForm data2) {
    Navigator.of(context).pop();
    openLoanStepDecider(
        context, data2.preEnquiryNumber, data2.pan ?? data2.poiNumber ?? '');
  }

  Widget _buildContinueButton(BuildContext context) {
    return PrimaryButton(
      text: 'CONTINUE',
      onPressed: () {
        var newLoanState = BlocProvider.of<NewLoanCubit>(context).state;
        var form = newLoanState.form;

        final pan = _panCotroller.value.text;
        final customerName = _nameController.value.text;
        final mobile = _mobileController.value.text;
        final aadhaar = _aadhaarController.value.text;

        devLog(newLoanState.toString());

        // No pre enquiry exists with that pan number
        if (form == null) {
          BlocProvider.of<NewLoanActionCubit>(context).createBasicPreEnquiry(
            pan,
            customerName,
            aadhaar,
            _dob,
            mobile,
            _gender,
            customerRefNo: newLoanState.customer?.master.id,
            customer: newLoanState.customer,
          );
        } else {
          _goToStepDecider(context, form);
        }
      },
    );
  }
}
