
import 'package:active_loan/loans/domain/entity/recent_loans.dart';
import 'package:active_loan/loans/domain/repo/loan_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/logger.dart';

part 'recent_loans_cubit.freezed.dart';

part 'recent_loans_state.dart';

@injectable
class RecentLoansCubit extends Cubit<RecentLoansState> {
  RecentLoansCubit(this.repo) : super(const RecentLoansState.initial());

  final LoanRepo repo;

  void fetchRecentLoans() async {
    emit(const RecentLoansState.loading());

    try {
      final result = await repo.fetchRecentLoans();
      result.fold(
        (l) => emit(RecentLoansState.failure(l)),
        (r) => emit(RecentLoansState.success(records: r, hasReachedMax: true)),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not load recent loans');
      emit(RecentLoansState.failure(Failure.unknownFailure()));
    }
  }
}
