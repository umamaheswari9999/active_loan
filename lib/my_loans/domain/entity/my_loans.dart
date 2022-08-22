import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_loans.freezed.dart';
@freezed
abstract class MyLoans with _$MyLoans {
  const factory MyLoans({
    required String id,
    required double loanamount,
    required String dateofloansanction,
    required String loanno,
    required String  recordstatus,
    required String applicantname,
    required String prooftypenumber,
  })= _MyLoans;
}