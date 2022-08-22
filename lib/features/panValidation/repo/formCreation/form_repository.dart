import 'package:injectable/injectable.dart';
import 'formnetworkService.dart';
@injectable
class FormRepo
{
  final FormcreationNetworkServiece service;
  FormRepo({required this.service});
  Future<bool>formCreationuserDetails(String Name,PAN,Aadhar,Gender, moblileNumber,Dob) async
  {
    var res =await service.formLoanCreation(Name,PAN,Aadhar,Gender,moblileNumber,Dob);
    return res;
  }
}