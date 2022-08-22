
import 'package:active_loan/features/homeScreen/repo/loandetailsService.dart';
import 'package:active_loan/features/kycVerificationndDetails/repo/additional_information/additionalinf_networkservice.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdditionalInfRepo{
  final AdditionalInformation service;
  AdditionalInfRepo({required this.service});

  Future<bool> UpdatingSttatusoBDandAdditionaldatailsofUser(String id,gender,maritalstatus,occupation,residency,number,alternumber,fathername,employeename,
      officenumber,ofcemail,designation,annualinc,emailid) async{
    var res =await service.UpdatingSttatusoBDandAdditionaldatails( id,gender,maritalstatus,occupation,residency,number,alternumber,fathername,employeename,
        officenumber,ofcemail,designation,annualinc,emailid);
    return res;
  }
}