import 'package:freezed_annotation/freezed_annotation.dart';

part 'emi_plan.freezed.dart';

@freezed
class EmiPlan with _$EmiPlan {
  const factory EmiPlan({
    required String id,
    required String name,
    required int tenureInMonths,
    required int rateOfInterest,
    required int downPayment,
  }) = _EmiPlan;
}
