import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:active_loan/features/my_loans_inf/domain/repo/my_loans_inf_repo.dart';

import 'package:active_loan/shared/failure.dart';
import 'package:injectable/injectable.dart';

import '../../../data/constants/basic_Auth.dart';

import '../../domain/entity/my_loans_inf.dart';

import 'package:http/http.dart'as http;
import 'dart:developer'as logger;

import '../model/my_loans_inf_dto.dart';
@LazySingleton(as:MyLoansInfRepo)
class MyLoansInfRepoImpl implements MyLoansInfRepo{
  Future<Either<Failure, List<MyLoansInf>>> fetchMyLoansInf( String loanno) async {
    try{
      bool status = false;
      var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
      final response = await http.get(Uri.parse("https://testsairoshni.nettlinx.com/erp/org.openbravo.service.json.jsonrest/lds_paycollection?l=sai&p=welcome&_where=loanno='$loanno'"),headers: headers);

      print(response.statusCode)
      ;
      if (response.statusCode == 200)
      {
        status=true;
        final responsebody = jsonDecode(response.body) as Map<String, dynamic>;
        final res = responsebody['response'] as Map<String, dynamic>;
        final loans = (res['data']) as List<dynamic>;
        final list =loans.map<MyLoansInf>((json) => MyLoansInfDto.fromJson(json).toDomain()).toList();
        print(list);
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

