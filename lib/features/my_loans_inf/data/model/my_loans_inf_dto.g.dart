// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_loans_inf_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyLoansInfDto _$$_MyLoansInfDtoFromJson(Map<String, dynamic> json) =>
    _$_MyLoansInfDto(
      emioutstanding: (json['emioutstanding'] as num).toDouble(),
      othercharges: (json['othercharges'] as num).toDouble(),
      tenure: json['tenure'] as int,
      nextemidate: json['nextemidate'] as String?,
      emioverdueamount: (json['emioverdueamount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MyLoansInfDtoToJson(_$_MyLoansInfDto instance) =>
    <String, dynamic>{
      'emioutstanding': instance.emioutstanding,
      'othercharges': instance.othercharges,
      'tenure': instance.tenure,
      'nextemidate': instance.nextemidate,
      'emioverdueamount': instance.emioverdueamount,
    };
