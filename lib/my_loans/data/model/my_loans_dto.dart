import 'package:active_loan/my_loans/domain/entity/my_loans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_loans_dto.freezed.dart';
part 'my_loans_dto.g.dart';

@freezed
abstract class MyLoansDto implements _$MyLoansDto {
  const MyLoansDto._();

  const factory MyLoansDto({
    required String id,
    required double loanamount,
    required String dateofloansanction,
    required String loanno,
    required String recordstatus,
    required String applicantname,
    required String prooftypenumber,

  }) = _MyLoansDto;

  MyLoans toDomain() {
    return MyLoans(
      id: id,
      loanamount: loanamount,
      dateofloansanction: dateofloansanction,
      loanno: loanno,
      recordstatus: recordstatus,
      applicantname: applicantname,
      prooftypenumber: prooftypenumber,
     );
  }

  factory MyLoansDto.fromJson(Map<String, dynamic> json) =>
      _$MyLoansDtoFromJson(json);

}