// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_charges_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtherChargesDto _$$_OtherChargesDtoFromJson(Map<String, dynamic> json) =>
    _$_OtherChargesDto(
      invoiceDate: json['invoiceDate'] as String,
      outstandingAmount: (json['outstandingAmount'] as num).toDouble(),
      id: json['id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_OtherChargesDtoToJson(_$_OtherChargesDto instance) =>
    <String, dynamic>{
      'invoiceDate': instance.invoiceDate,
      'outstandingAmount': instance.outstandingAmount,
      'id': instance.id,
      'description': instance.description,
    };
