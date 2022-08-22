import 'dart:convert';
import 'package:active_loan/auth/data/model/user_dto.dart';
import 'package:active_loan/di/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:active_loan/my_loans/domain/repo/my_loans_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:injectable/injectable.dart';
import '../../../features/data/constants/basic_Auth.dart';
import '../../domain/entity/my_loans.dart';
import '../model/my_loans_dto.dart';
import 'package:http/http.dart'as http;
import 'dart:developer'as logger;
@LazySingleton(as:MyLoansRepo)
class MyLoansRepoImpl implements MyLoansRepo{
  Future<Either<Failure, List<MyLoans>>> fetchMyLoans() async {
    try{
      var user = locator.get<AdUserdetails>();
      print(user.name);
      bool status = false;
      var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
      final response = await http.get(Uri.parse("https://testsairoshni.nettlinx.com/erp/org.openbravo.service.json.jsonrest/lds_paycollection?&_where=prooftypenumber='${user.alternativePhone}'"),headers: headers);
      print(response.request);
      if (response.statusCode == 200)
      {
        status=true;
        final responsebody = jsonDecode(response.body) as Map<String, dynamic>;
        final res = responsebody['response'] as Map<String, dynamic>;
        final loans = (res['data']) as List<dynamic>;
        final list =loans.map<MyLoans>((json) => MyLoansDto.fromJson(json).toDomain()).toList();
        print(list.length);
        return Right(list);
      }
      else
      {
        return Left(Failure.apiFailure("Something Issue"));
      }
    }
    catch(e,st){
      logger.log(e.toString());
      logger.log(st.toString());
      return Left(Failure.apiFailure("Something Issue"));
    }

  }

}

