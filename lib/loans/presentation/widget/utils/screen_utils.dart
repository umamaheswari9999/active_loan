
import 'package:active_loan/loans/presentation/bloc/recent_loans/recent_loans_cubit.dart';
import 'package:active_loan/loans/presentation/screen/new_consumer_loan/new_loan_step_decider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection.dart';
import '../../bloc/add_note/add_note_cubit.dart';
import '../../bloc/kyc_check/kyc_check_cubit.dart';
import '../../bloc/new_loan/new_loan_cubit.dart';
import '../../bloc/new_loan_actions/new_loan_action_cubit.dart';
import '../../bloc/notes/notes_cubit.dart';
import '../../screen/chat_screen.dart';

void openLoanStepDecider(BuildContext context, String preEnquiryNumber, String poiNumber) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (ctx) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (ctx2) => locator.get<KycCheckCubit>()),
          BlocProvider(create: (ctx2) => locator.get<NewLoanCubit>()),
          BlocProvider(
              create: (ctx2) => locator.get<NewLoanActionCubit>()
                ..checkLoanStatusAndSetStep(
                    preEnquiryNumber, poiNumber)),
        ],
        child: NewLoanStepDeciderScreen(
          poiNumber: poiNumber,
          loanNumber: preEnquiryNumber,
        ),
      ),
    ),
  ).then((value) {
    BlocProvider.of<RecentLoansCubit>(context).fetchRecentLoans();
  });
}

void openChatScreen(BuildContext context, String loanId, String loanNumber) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (ctx2) =>
            locator.get<NotesCubit>()..fetchInitial(loanId)),
        BlocProvider(create: (ctx2) => locator.get<AddNoteCubit>())
      ],
      child: ChatScreen(
        loanId: loanId,
        loanNumber: loanNumber,
      ),
    );
  }));
}