
import 'package:active_loan/loans/domain/entity/loan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_loans.freezed.dart';

@freezed
class RecentLoans with _$RecentLoans {
  const factory RecentLoans({
    required List<Loan> draftLoans,
    required List<Loan> preApprovedLoans,
    required List<Loan> disbursedLoans,
}) = _RecentLoans;
}