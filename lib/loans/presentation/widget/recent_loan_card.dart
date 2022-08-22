
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:active_loan/loans/presentation/widget/utils/screen_utils.dart';
import 'package:active_loan/shared/currency_formatter_utils.dart';
import 'package:active_loan/shared/string_utils.dart';
import 'package:active_loan/shared/styles.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entity/loan.dart';

class RecentLoanCard extends StatelessWidget {
  const RecentLoanCard({
    Key? key,
    required this.loan,
  }) : super(key: key);

  final Loan loan;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (loan.isPreApproved || loan.isInDraft) {
          openLoanStepDecider(context, loan.loanNo, loan.proofTypeNumber ?? '');
        }
      },
      child: SizedBox(
        width: 300,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side:  const BorderSide(
              color: AppColors.lightGrey,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(12.0),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        '#${loan.loanNo}'.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.blueGrey),
                      ),
                    ),
                    if (loan.isInDraft || (loan.isPreApproved && !loan.isDisbursed)) InkWell(
                      child: Icon(FeatherIcons.helpCircle, size: 20, color: Theme.of(context).colorScheme.secondary),
                      onTap: () {
                        openChatScreen(context, loan.id, loan.loanNo);
                      },
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 6),
                    Text(
                      loan.customerName,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      loan.proofTypeNumber?.isNotEmpty == true ? StringUtils.getMaskedAadhaar(loan.proofTypeNumber!) : '',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Text(CurrencyFormatter.getFormattedAmount(loan.loanAmount)),
                    const SizedBox(width: 12),
                    CircleAvatar(
                        radius: 2,
                        backgroundColor: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    Text(DateFormat.MMMd()
                        .format(DateTime.parse(loan.createdAt))),
                    const SizedBox(width: 8),
                    CircleAvatar(
                        radius: 2,
                        backgroundColor: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 8),
                    Expanded(child: Text(LoanStage.mapStage(loan.appLoanStatus ?? ''), maxLines: 1)),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              if (loan.isInDraft || loan.isPreApproved)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: LinearProgressIndicator(
                      value:
                          _getLoanProgressPercentage(loan.appLoanStatus ?? '', loan.isDisbursed),
                      backgroundColor: AppColors.lightGrey,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.green,
                      ),
                      minHeight: 8,
                    ),
                  ),
                ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  double _getLoanProgressPercentage(String status, bool isDisbursed) {
    if (isDisbursed) return 1.0;

    switch (status) {
      case LoanStage.draft:
        return 0.1;
      case LoanStage.reviewKyc:
      case LoanStage.waitingForKyc:
        return 0.3;
      case LoanStage.additionalInfo:
        return 0.4;
      case LoanStage.bankDetails:
        return 0.5;
      case LoanStage.loanRequirements:
        return 0.6;
      case LoanStage.waitingForPreApproval:
      case LoanStage.waitingForCallVerification:
      case LoanStage.preApproved:
        return 0.9;
      default:
        return 0.8;
    }
  }
}
