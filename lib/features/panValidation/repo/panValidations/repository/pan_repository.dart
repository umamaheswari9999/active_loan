import 'package:injectable/injectable.dart';
import '../../../domain/detailsfromClientmastervthifsc.dart';
import '../../../domain/panValidationclass_page.dart';
import '../pan_validationService.dart';
@injectable
class PanRepo{
  final PANdetailsnetworkServiece service;
  PanRepo({required this.service});
  Future<List<Details>> fetchingUserClientmaster(String panno) async{
    var res =await service.fetchingPANdetailsofexistedUserClientmaster(panno);
    return res;
  }
  Future<Panvalidation?> Panvalidationsdigio(String panno, Username, Password) async{
    var res =await service.PANvalidationdigio(panno, Username, Password) ;
    return res;
  }
}