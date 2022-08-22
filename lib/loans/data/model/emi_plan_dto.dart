
import 'package:active_loan/loans/domain/entity/emi_plan.dart';
import 'package:active_loan/widgets/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emi_plan_dto.g.dart';

part 'emi_plan_dto.freezed.dart';

@freezed
class EmiPlanDto with _$EmiPlanDto, BaseDto<EmiPlanDto, EmiPlan> {
  const EmiPlanDto._();

  const factory EmiPlanDto({
    required String id,
    @JsonKey(name: 'planname') required String name,
    @JsonKey(name: 'tenureinmonths') required int tenureInMonths,
    @JsonKey(name: 'rateofinterest') required int rateOfInterest,
    @JsonKey(name: 'downpaymentemi') required int downPayment,
  }) = _EmiPlanDto;

  factory EmiPlanDto.fromJson(Map<String, dynamic> json) =>
      _$EmiPlanDtoFromJson(json);

  @override
  EmiPlanDto fromJson(Map<String, dynamic> json) => EmiPlanDto.fromJson(json);

  @override
  EmiPlan toDomain() {
    return EmiPlan(
      id: id,
      name: name,
      tenureInMonths: tenureInMonths,
      rateOfInterest: rateOfInterest,
      downPayment: downPayment,
    );
  }
}