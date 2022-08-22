part of 'emi_plans_cubit.dart';

@freezed
class EmiPlansState with _$EmiPlansState {
  const factory EmiPlansState.initial() = _EmiPlansInitial;

  const factory EmiPlansState.loading() = _EmiPlansLoading;

  const factory EmiPlansState.success({
    required List<EmiPlan> records,
    required bool hasReachedMax,
  }) = _EmiPlansSuccess;

  const factory EmiPlansState.failure(Failure failure) =
  _EmiPlansFailure;
}
