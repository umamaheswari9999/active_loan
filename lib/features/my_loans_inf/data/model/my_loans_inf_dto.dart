import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entity/my_loans_inf.dart';
part 'my_loans_inf_dto.freezed.dart';
part 'my_loans_inf_dto.g.dart';

@freezed
abstract class MyLoansInfDto implements _$MyLoansInfDto {
  const MyLoansInfDto._();

  const factory MyLoansInfDto({
    required double emioutstanding,
    required double othercharges,
    required int tenure,
     String? nextemidate,
    required double emioverdueamount
  }) = _MyLoansInfDto;

  MyLoansInf toDomain() {
    return MyLoansInf(
        emioutstanding: emioutstanding,
        othercharges: othercharges,
        tenure: tenure,
        nextemidate: nextemidate,
        emioverdueamount:emioverdueamount,
       );
  }

  factory MyLoansInfDto.fromJson(Map<String, dynamic> json) =>
      _$MyLoansInfDtoFromJson(json);
}
