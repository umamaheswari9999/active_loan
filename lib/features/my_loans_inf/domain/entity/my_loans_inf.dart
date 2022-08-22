import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_loans_inf.freezed.dart';
@freezed
abstract class MyLoansInf with _$MyLoansInf {
  const factory MyLoansInf({
    required double emioutstanding,
    required double othercharges,
    required int tenure,
    String? nextemidate,
    required double emioverdueamount,
  })= _MyLoansInf;
}