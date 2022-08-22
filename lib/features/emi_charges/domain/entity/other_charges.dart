import 'package:freezed_annotation/freezed_annotation.dart';
part 'other_charges.freezed.dart';
@freezed
abstract class OtherCharges with _$OtherCharges {
  const factory OtherCharges({
    required  String invoiceDate,
    required  double outstandingAmount,
    required  String id,
    required String description
  })= _OtherCharges;
}
