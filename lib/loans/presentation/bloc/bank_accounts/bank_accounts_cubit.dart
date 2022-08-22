import 'package:active_loan/features/kycVerificationndDetails/domain/simpleClass.dart';
import 'package:active_loan/loans/domain/repo/loan_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bank_accounts_cubit.freezed.dart';

part 'bank_accounts_state.dart';

@injectable
class BankAccountsCubit extends Cubit<BankAccountsState> {
  BankAccountsCubit(this.repo) : super(const BankAccountsState.initial());

  final LoanRepo repo;
  final pageLength = 20;

  void fetchInitial({String? query}) async {
    emit(const BankAccountsState.loading());

    var result = await repo.fetchBanks(0, pageLength, query);
    result.fold(
          (l) => emit(BankAccountsState.failure(l)),
          (r) => emit(
        BankAccountsState.success(
          records: r,
          hasReachedMax: r.length < pageLength,
        ),
      ),
    );
  }

  void fetchMore({String? query}) async {
    state.maybeWhen(
        success: (oldRecord, hasReachedMax) async {
          if (!hasReachedMax) {
            final result = await repo.fetchBanks(
              oldRecord.length,
              oldRecord.length + pageLength,
  query,
            );
            result.fold(
                  (f) => emit(BankAccountsState.failure(f)),
                  (r) => emit(
                BankAccountsState.success(
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
