import 'package:active_loan/features/homeScreen/repo/loandetailsService.dart';
import 'package:injectable/injectable.dart';

import 'kyc_networkService.dart';
@injectable
class KycRepo{
  final KycFlowsteps service;
  KycRepo({required this.service});

  Future<String>SendKYCotpforUser(String id) async{
    var res =await service.SendKYCotp(id);
    return res;
  }

  Future<bool> VerifyKYCotpforUser(enteredotp,otpserver,id) async{
    var res =await service.VerifyKYCotp(enteredotp,otpserver,id);
    return res;
  }
}