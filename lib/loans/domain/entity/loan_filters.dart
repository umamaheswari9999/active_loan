
import 'package:active_loan/loans/domain/entity/loan_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_filters.freezed.dart';

@freezed
class LoanFilters with _$LoanFilters {
  const factory LoanFilters({
    String? searchQuery,
    LoanStatus? status,
    DateTime? fromDate,
    DateTime? toDate,
}) = _LoanFilters;
}