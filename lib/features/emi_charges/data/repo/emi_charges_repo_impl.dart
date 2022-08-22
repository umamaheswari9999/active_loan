import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart'as http;
import 'package:intl/intl.dart';
import 'dart:developer'as logger;
import '../../../data/constants/basic_Auth.dart';
import '../../domain/entity/emi_charges.dart';
import '../../domain/entity/other_charges.dart';
import '../../domain/repo/emi_charges_repo.dart';
import '../model/emi_charges_dto.dart';
import '../model/other_charges_dto.dart';
@LazySingleton(as:EmiChargesRepo)
class EmiChrgesRepoImpl implements EmiChargesRepo{
  Future<Either<Failure, List<EmiCharges>>> fetchEmis(String id) async {
    try{
      bool status = false;
      var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
      final response = await http.get(Uri.parse("https://testsairoshni.nettlinx.com/erp/org.openbravo.service.json.jsonrest/lds_emidetails?l=sai&p=welcome&_selectedProperties=emiduedate,outstandingamnt,id&_where=lDSPaycollection='$id'  and isprocessed=false"),headers: headers);

      print(response.request)
      ;
      if (response.statusCode == 200)
      {

        status=true;
        final responsebody = jsonDecode(response.body) as Map<String, dynamic>;
        final res = responsebody['response'] as Map<String, dynamic>;
        final loans = (res['data']) as List<dynamic>;
        final list =loans.map((json) => EmiChargesDto.fromJson(json).toDomain()).toList();
        list.sort((a, b) =>DateFormat("yyyy-MM-dd").parse(a.emiduedate).compareTo(DateFormat("yyyy-MM-dd").parse(b.emiduedate)));
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
  Future<Either<Failure, List<OtherCharges>>> FetchOtherCharges(String id) async {
    try{
      bool status = false;
      var headers = <String, String>{'authorization': BasicAuth().basicAuthentication()};
      final response = await http.get(Uri.parse("https://testsairoshni.nettlinx.com/erp/org.openbravo.service.json.jsonrest/Invoice?l=sai&p=welcome&_where=ldsLoandetails='$id' and paymentComplete=false and ldsChargestype!=null"),headers: headers);
      print(response.statusCode);
      if (response.statusCode == 200)
      {

        status=true;
        final responsebody = jsonDecode(response.body) as Map<String, dynamic>;
        final res = responsebody['response'] as Map<String, dynamic>;
        final loans = (res['data']) as List<dynamic>;
        final list =loans.map((json) => OtherChargesDto.fromJson(json).toDomain()).toList();
        list.sort((a, b) =>DateFormat("yyyy-MM-dd").parse(a.invoiceDate).compareTo(DateFormat("yyyy-MM-dd").parse(b.invoiceDate)));
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

