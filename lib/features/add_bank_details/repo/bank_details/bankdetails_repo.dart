
import 'package:injectable/injectable.dart';

import '../../domain/bankDetailsclass.dart';
import '../../domain/existingAccountDetailsclass/existingDetails_page.dart';
import 'bankdetails_networkService.dart';
@injectable
class BankRepo{
  final BankdetailsnetworkServiece service;
  BankRepo({required this.service});
  Future<bankexistingDetails?>fetchBankDetailsfetchingifsc(String ifsccode)  async{
    var res =await service.fetchBankDetails( ifsccode) ;
    return res;
  }
  Future<List<BankNameDetails>> BanknamenamesApi() async {
    var res =await service.Banknames() ;
    return res;
  }
  Future<bool> Updatingbankdetailsfornewaccountdetails(String  id,bankSelected,accountNo,ifsccode,branchName,micrNo) async {
    var res =await service.Updatingbankdetailsfornewaccount(id,bankSelected,accountNo,ifsccode,branchName,micrNo) ;
    return res;
  }
}