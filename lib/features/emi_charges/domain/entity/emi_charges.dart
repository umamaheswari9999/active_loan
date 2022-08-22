import 'package:freezed_annotation/freezed_annotation.dart';
part 'emi_charges.freezed.dart';
@freezed
abstract class EmiCharges with _$EmiCharges {
  const factory EmiCharges({
   required  String emiduedate,
   required  double outstandingamnt,
   required  String id,
  })= _EmiCharges;
}
