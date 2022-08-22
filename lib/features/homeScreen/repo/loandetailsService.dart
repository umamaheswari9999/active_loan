import 'dart:convert';
import 'dart:developer' as logger ;
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../data/constants/constants.dart';
import '../domain/loandetails.dart';
@lazySingleton
class LoandetailsnetworkServiece{
  Future<List<List<Loandetails>>> fetchRecentLoans() async {
    // URL
    const String url =
        '${Constants.baseCustomApiUrl}/${CustomWebServices.recentLoans}?l=Appal&p=welcome';
    // METHOD: POST
    // REQUEST BODY
    final String requestBody = json.encode(
        {'data':
         {
            'userId': 'D5F96992150A4F03A9CC07BA922FE3FF'
          }
        });
    // API CALL
    final result = await http.post(Uri.parse(url), body: requestBody);
   // logger.log(result.body.toString());
    // RESPONSE
    if (result.statusCode == 200) {
      var responseBody = result.body;
      var jsonResponse = json.decode(responseBody) as Map<String, dynamic>;
      var response = jsonResponse['response'] as Map<String, dynamic>;
      var data = response['data'] as List<dynamic>;
      var loans = data[0] as Map<String, dynamic>;
      var recentLoans = loans['recentLoansList'] as List<dynamic>;
      var preapprovedLoans = loans['preapprovedLoans'] as List<dynamic>;
      var recentLoansList = <Loandetails>[];
      for (int i = 0; i < recentLoans.length; i++) {
        final String? loan = recentLoans[i]['loanno'];
        final String? customername = recentLoans[i]['customername'];
        final String? prooftypenumber = recentLoans[i]['prooftypenumber'];
        final String? id = recentLoans[i]['id'];
        final String? panno = recentLoans[i]['panno'];
        final String? mobilenumber = recentLoans[i]['mobilenumber'];
        final String? gender = recentLoans[i]['gender'];
        final String? lDSApploanstatus = recentLoans[i]['lDSApploanstatus'];
        final String? consentCreatedOn=recentLoans[i]['consentCreatedOn'];
        final int? loanamount=recentLoans[i]['loanamount'];
        final String creationDate=recentLoans[i]['creationDate'];
        recentLoansList.add(Loandetails(loan!,customername,lDSApploanstatus!,id!,panno,prooftypenumber,mobilenumber,gender,consentCreatedOn,loanamount,creationDate));
      }
      // return recentLoansList;
      var preapprovedLoansList = <Loandetails>[];
      for (int j = 0; j < preapprovedLoans.length; j++) {
        final String? loan1 = preapprovedLoans[j]['loanno'];
        final String? customername1 = preapprovedLoans[j]['customername'];
        final String? id1 = preapprovedLoans[j]['id'];
        final String? panno1 = preapprovedLoans[j]['panno'];
        final String? lDSApploanstatus1 = preapprovedLoans[j]['lDSApploanstatus'];
        final String? prooftypenumber1 = preapprovedLoans[j]['prooftypenumber'];
        final String? mobilenumber1 = preapprovedLoans[j]['mobilenumber'];
        final String? gender1 = preapprovedLoans[j]['gender'];
        final String? consentCreatedOn1=preapprovedLoans[j]['consentCreatedOn'];
        final int?loanamount1=preapprovedLoans[j]['loanamount'];
        final String creationDate1=preapprovedLoans[j]['creationDate'];
        preapprovedLoansList.add(Loandetails(loan1!, customername1!, lDSApploanstatus1!,id1!,panno1,prooftypenumber1,mobilenumber1,gender1,consentCreatedOn1,loanamount1,creationDate1));
      }


      return [recentLoansList, preapprovedLoansList];
    } else {
      // error
      return [];
    }
  }

}