// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emi_charges_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmiChargesDto _$$_EmiChargesDtoFromJson(Map<String, dynamic> json) =>
    _$_EmiChargesDto(
      emiduedate: json['emiduedate'] as String,
      outstandingamnt: (json['outstandingamnt'] as num).toDouble(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_EmiChargesDtoToJson(_$_EmiChargesDto instance) =>
    <String, dynamic>{
      'emiduedate': instance.emiduedate,
      'outstandingamnt': instance.outstandingamnt,
      'id': instance.id,
    };
