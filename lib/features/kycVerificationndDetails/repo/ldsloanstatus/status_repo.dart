
import 'package:active_loan/features/kycVerificationndDetails/repo/ldsloanstatus/statuschange_networkService.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApploanstatusUpdateRepo{
  final LdsapploanstatusUpdate service;
  ApploanstatusUpdateRepo({required this.service});

  Future<bool> UpdatingStatustoAIwithLocationAddressID(String id, currentAddressid) async{
    var res =await service.UpdatingStatustoAIwithAddressID(id, currentAddressid);
    return res;
  }
  UpdatingappStatustoRKYC( String id) async{
    var res =await service.UpdatingStatustoRKYC(id);
    return res;
  }
}