
import 'package:active_loan/loans/domain/entity/loan.dart';
import 'package:active_loan/loans/domain/entity/loan_filters.dart';
import 'package:active_loan/loans/domain/repo/loan_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loans_cubit.freezed.dart';

part 'loans_state.dart';

@injectable
class LoansCubit extends Cubit<LoansState> {
  LoansCubit(this.repo) : super(const LoansState.initial());

  final LoanRepo repo;
  final pageLength = 20;

  void fetchInitial(LoanFilters filters) async {
    emit(const LoansState.loading());

    var result = await repo.fetchLoans(filters, 0, pageLength);
    result.fold(
          (l) => emit(LoansState.failure(l)),
          (r) => emit(
        LoansState.success(
          records: r,
          hasReachedMax: r.length < pageLength,
        ),
      ),
    );
  }

  void fetchMore(LoanFilters filters) async {
    state.maybeWhen(
        success: (oldRecord, hasReachedMax) async {
          if (!hasReachedMax) {
            final result = await repo.fetchLoans(
              filters,
              oldRecord.length,
              oldRecord.length + pageLength,
            );
            result.fold(
                  (f) => emit(LoansState.failure(f)),
                  (r) => emit(
                LoansState.success(
                  records: oldRecord + r,
                  hasReachedMax: r.length < pageLength,
                ),
              ),
            );
          }
        },
        orElse: () {}
    );
  }
}
