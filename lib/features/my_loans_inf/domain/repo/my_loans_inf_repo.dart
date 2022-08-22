

import 'package:dartz/dartz.dart';
import 'package:active_loan/features/my_loans_inf/domain/entity/my_loans_inf.dart';
import '../../../../shared/failure.dart';
abstract class MyLoansInfRepo {
  Future<Either<Failure, List<MyLoansInf>>> fetchMyLoansInf( String loanno);
}