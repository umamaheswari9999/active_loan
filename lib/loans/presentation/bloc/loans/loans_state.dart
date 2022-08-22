part of 'loans_cubit.dart';

@freezed
class LoansState with _$LoansState {
  const factory LoansState.initial() = _LoansInitial;

  const factory LoansState.loading() = _LoansLoading;

  const factory LoansState.success({
    required List<Loan> records,
    required bool hasReachedMax,
  }) = _LoansSuccess;

  const factory LoansState.failure(Failure failure) =
  _LoansFailure;
}
