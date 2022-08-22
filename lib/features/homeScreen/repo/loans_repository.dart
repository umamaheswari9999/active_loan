
import 'package:active_loan/features/homeScreen/repo/loandetailsService.dart';
import 'package:injectable/injectable.dart';

import '../domain/loandetails.dart';
import '../domain/loandetails.dart';
@injectable
class Repo{
  final LoandetailsnetworkServiece service;
  Repo({required this.service});

  Future<List<List<Loandetails>>>loandetails() async{
    var res =await service.fetchRecentLoans();
    return res;
  }
}