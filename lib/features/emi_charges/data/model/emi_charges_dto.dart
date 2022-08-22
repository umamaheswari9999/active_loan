
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/emi_charges.dart';
part 'emi_charges_dto.freezed.dart';
part 'emi_charges_dto.g.dart';

@freezed
abstract class EmiChargesDto implements _$EmiChargesDto {
  const EmiChargesDto._();

  const factory EmiChargesDto({
     required String emiduedate,
     required double outstandingamnt,
     required String id,

  }) = _EmiChargesDto;

  EmiCharges toDomain() {
    return EmiCharges(
      emiduedate: emiduedate,
      outstandingamnt: outstandingamnt,
      id: id,

    );
  }

  factory EmiChargesDto.fromJson(Map<String, dynamic> json) =>
      _$EmiChargesDtoFromJson(json);

}