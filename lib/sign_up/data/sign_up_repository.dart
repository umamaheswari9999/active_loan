import 'package:active_loan/sign_up/data/sign_up_servicelocator.dart';
import 'package:active_loan/sign_up/domain/sign_up_model_class.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpRepo
{
  final UserdetailsnetworkService service;
  SignUpRepo({required this.service});
  Future<List<UserDetails>>isAdUserExisted(String moblileNumber) async
  {
    var res =await service.isAdUserExist(moblileNumber);
    return res;
  }
}