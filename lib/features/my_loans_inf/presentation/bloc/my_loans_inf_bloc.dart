import 'package:active_loan/features/my_loans_inf/domain/entity/my_loans_inf.dart';
import 'package:active_loan/features/my_loans_inf/domain/repo/my_loans_inf_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as logger;
part 'my_loans_inf_bloc.freezed.dart';

@injectable
class MyLoansInfBloc extends Cubit<MyLoansInfState> {
  final MyLoansInfRepo myLoansInfRepo;
  MyLoansInfBloc({required this.myLoansInfRepo}):super(MyLoansInfState.initial());

  fetchMyLoanDetails(String loanno) async {
    emit(MyLoansInfState.loading());
    try {
      var res = await myLoansInfRepo.fetchMyLoansInf(loanno);
      res.fold(
          (l) =>
              emit(MyLoansInfState.failure(Failure.apiFailure(l.toString()))),
          (r) {

            emit(MyLoansInfState.success(myLoansinf: r));
          });
    } catch (e, st) {
      logger.log(e.toString());
      emit(MyLoansInfState.failure(Failure.apiFailure(e.toString())));
    }
  }
}

@freezed
abstract class MyLoansInfState with _$MyLoansInfState {
  const factory MyLoansInfState.initial() = _Initial;
  const factory MyLoansInfState.loading() = _Loading;
  const factory MyLoansInfState.success(
      {required List<MyLoansInf> myLoansinf}) = _Success;
  const factory MyLoansInfState.failure(Failure failure) = _Failure;
}
