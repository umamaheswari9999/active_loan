// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emi_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmiPlanDto _$$_EmiPlanDtoFromJson(Map<String, dynamic> json) =>
    _$_EmiPlanDto(
      id: json['id'] as String,
      name: json['planname'] as String,
      tenureInMonths: json['tenureinmonths'] as int,
      rateOfInterest: json['rateofinterest'] as int,
      downPayment: json['downpaymentemi'] as int,
    );

Map<String, dynamic> _$$_EmiPlanDtoToJson(_$_EmiPlanDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planname': instance.name,
      'tenureinmonths': instance.tenureInMonths,
      'rateofinterest': instance.rateOfInterest,
      'downpaymentemi': instance.downPayment,
    };
