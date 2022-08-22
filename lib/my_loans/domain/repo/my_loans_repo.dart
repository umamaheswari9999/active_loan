

import 'package:dartz/dartz.dart';
import '../../domain/entity/my_loans.dart';
import '../../../shared/failure.dart';
import '../../data/model/my_loans_dto.dart';

abstract class MyLoansRepo {
  Future<Either<Failure, List<MyLoans>>> fetchMyLoans();
}