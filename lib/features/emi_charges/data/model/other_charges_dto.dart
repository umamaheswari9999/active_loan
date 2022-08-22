import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entity/other_charges.dart';
part 'other_charges_dto.freezed.dart';
part 'other_charges_dto.g.dart';

@freezed
abstract class OtherChargesDto implements _$OtherChargesDto {
  const OtherChargesDto._();

  const factory OtherChargesDto(
      {required String invoiceDate,
      required double outstandingAmount,
      required String id,
      required String description}) = _OtherChargesDto;

  OtherCharges toDomain() {
    return OtherCharges(
        invoiceDate: invoiceDate,
        outstandingAmount: outstandingAmount,
        id: id,
        description: description);
  }

  factory OtherChargesDto.fromJson(Map<String, dynamic> json) =>
      _$OtherChargesDtoFromJson(json);
}
