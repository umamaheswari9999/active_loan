
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/kycVerificationndDetails/domain/staticData.dart';
import '../../../../features/panValidation/presentation/widget/input_field.dart';
import '../../../../shared/context_utils.dart';
import '../../../../shared/widget/primary_button.dart';
import '../../../domain/entity/pre_enquiry_form.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';
import '../choice_chip_list_widget.dart';

class AdditionalDetailsStep extends StatefulWidget {
  const AdditionalDetailsStep({Key? key}) : super(key: key);

  @override
  State<AdditionalDetailsStep> createState() => _AdditionalDetailsStepState();
}

class _AdditionalDetailsStepState extends State<AdditionalDetailsStep> {
  String? _gender;
  String? _occupationType;
  String? _maritalStatus;
  String? _residenceType;
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _altPhoneController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _motherNameController = TextEditingController();
  final TextEditingController _empNameController = TextEditingController();
  final TextEditingController _offPhoneNumberController =
      TextEditingController();
  final TextEditingController _offEmailIdController = TextEditingController();
  final TextEditingController _emailIdController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _annualIncome = TextEditingController();

  @override
  void initState() {
    super.initState();
    var form = BlocProvider.of<NewLoanCubit>(context).state.form;
    if (form != null) {
      _gender = form.gender;
      _maritalStatus = form.maritalStatus;
      _occupationType = form.occupationType;
      _residenceType = form.residenceType;
      _phoneController.text = form.mobileNumber ?? '';
      _altPhoneController.text = form.altMobileNumber ?? '';
      _fatherNameController.text = form.fatherName ?? '';
      _motherNameController.text = form.motherName ?? '';
      _empNameController.text = form.employerName ?? '';
      _emailIdController.text = form.email ?? '';
      _offPhoneNumberController.text = form.officePhoneNumber != null ? form.officePhoneNumber.toString() : '';
      _offEmailIdController.text = form.officialEmail ?? '';
      _designationController.text = form.designation ?? '';
      _annualIncome.text =
          form.annualIncome != null ? form.annualIncome.toString() : '';
    }
  }

  @override
  Widget build(BuildContext context) {
    const verticalSpace = SizedBox(height: 12);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ChoiceChoiceListWidget(
          title: 'Gender',
          items: StaticData.genders,
          dropdownViewStyle: false,
          onSelected: (value) => _gender = value,
          defaultSelection: _gender,
        ),
        verticalSpace,
        ChoiceChoiceListWidget(
          title: 'Marital Status',
          items: StaticData.maritalStatus,
          onSelected: (value) => _maritalStatus = value,
          dropdownViewStyle: false,
          defaultSelection: _maritalStatus,
        ),
        verticalSpace,
        InputField(
          controller: _emailIdController,
          hintText: 'Email Id', keyboardType: TextInputType.text,
        ),
        verticalSpace,
        ChoiceChoiceListWidget(
          title: 'Occupation Type',
          items: StaticData.occupationTypes,
          onSelected: (value) => _occupationType = value,
          defaultSelection: _occupationType,
        ),
        verticalSpace,
        ChoiceChoiceListWidget(
          title: 'Residence Type',
          items: StaticData.residenceTypes,
          onSelected: (value) => _residenceType = value,
          defaultSelection: _residenceType,
        ),
        verticalSpace,
        verticalSpace,
        InputField(
          controller: _phoneController,
          hintText: 'Phone Number',
          keyboardType: TextInputType.number,
          maxLength: 10,
        ),
        verticalSpace,
        InputField(
          controller: _altPhoneController,
          hintText: 'Alternative Phone Number',
          keyboardType: TextInputType.number,
          maxLength: 10,
        ),
        verticalSpace,
        InputField(
          controller: _fatherNameController,
          hintText: 'Father Name',
            keyboardType: TextInputType.text
        ),
        verticalSpace,
        InputField(
          controller: _motherNameController,
          hintText: 'Mother Name',
            keyboardType: TextInputType.text
        ),
        verticalSpace,
        InputField(
          controller: _empNameController,
          hintText: 'Employer Name',
            keyboardType: TextInputType.text
        ),
        verticalSpace,
        InputField(
          controller: _offPhoneNumberController,
          hintText: 'Office Phone Number',
          keyboardType: TextInputType.number,
          maxLength: 10,
        ),
        verticalSpace,
        InputField(
          controller: _offEmailIdController,
          hintText: 'Official Email Id',
            keyboardType: TextInputType.text
        ),
        verticalSpace,
        InputField(
          controller: _designationController,
          hintText: 'Designation',
            keyboardType: TextInputType.text
        ),
        verticalSpace,
        InputField(
          controller: _annualIncome,
          hintText: 'Annual Income',
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        BlocConsumer<NewLoanActionCubit, NewLoanActionState>(
          listener: (ctx, state) {
            state.maybeWhen(
              success: (action, data) {
                if (action == NewLoanAction.completeAdditionalInformation) {
                  if (data != null && data['loan'] != null) {
                    var data2 = data['loan'] as PreEnquiryForm;
                    BlocProvider.of<NewLoanCubit>(context)
                        .moveToNextStep(form: data2);
                  }
                }
              },
              failure: (action, f) {
                if (action == NewLoanAction.completeAdditionalInformation) {
                  f.maybeWhen(
                    orElse: () {
                      showSnackbar(context,
                          'Could not update additional information. Please try again');
                    },
                    invalidFieldValue: (error) {
                      showSnackbar(context, error ?? 'Some fields contains invalid values');
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
              loading: (action) => isLoading = true,
            );

            if (isLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(strokeWidth: 2.0),
              );
            }

            return PrimaryButton(
              text: 'Continue'.toUpperCase(),
              elevation: 0.0,
              padding: const EdgeInsets.all(12.0),
              onPressed: () {
                var loanId =
                    BlocProvider.of<NewLoanCubit>(context).state.form!.id;
                BlocProvider.of<NewLoanActionCubit>(context)
                    .completeAdditionalDetails(
                  loanId,
                  gender: _gender,
                  email: _emailIdController.text,
                  occupationType: _occupationType,
                  maritalStatus: _maritalStatus,
                  residenceType: _residenceType,
                  phoneNumber: _phoneController.text,
                  altPhoneNumber: _altPhoneController.text,
                  fatherName: _fatherNameController.text,
                  motherName: _motherNameController.text,
                  employeeName: _empNameController.text,
                  offPhoneNumber: _offPhoneNumberController.text,
                  offEmailId: _offEmailIdController.text,
                  designation: _designationController.text,
                  annualIncome: _annualIncome.text,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
