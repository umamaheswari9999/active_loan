//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class RecentLoansScreen extends StatelessWidget {
//   const RecentLoansScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RecentLoansCubit, RecentLoansState>(
//       builder: (ctx, state) {
//         return state.when(
//           initial: () => const RecentLoansLoading(),
//           loading: () => const RecentLoansLoading(),
//           success: (loans, hasReachedMax) => _buildList(context, loans),
//           failure: (f) => Center(
//             child: FailureWidget(
//               failure: f,
//               onRefresh: () => _fetchRecentLoans(context),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   void _fetchRecentLoans(BuildContext context) {
//     BlocProvider.of<RecentLoansCubit>(context).fetchRecentLoans();
//   }
//
//   Widget _buildList(BuildContext context, RecentLoans loans) {
//     if (loans.draftLoans.isEmpty &&
//         loans.preApprovedLoans.isEmpty &&
//         loans.disbursedLoans.isEmpty) {
//       return Center(
//         child: EmptyListWidget(
//           message: 'No recent loans found',
//           onRefresh: () {
//             BlocProvider.of<RecentLoansCubit>(context).fetchRecentLoans();
//           },
//         ),
//       );
//     }
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         RecentLoansWidget(
//           loans: loans.draftLoans,
//           title: 'RECENT DRAFT LOANS',
//           onMore: () => _openLoans(context, LoanStatus.draft),
//         ),
//         RecentLoansWidget(
//           loans: loans.preApprovedLoans.where((element) => element.isDisbursed == false).toList(),
//           title: 'RECENT PRE APPROVED LOANS',
//           onMore: () => _openLoans(context, LoanStatus.preApproved),
//         ),
//         RecentLoansWidget(
//           loans: loans.disbursedLoans,
//           title: 'RECENT DISBURSED LOANS',
//           onMore: () => _openLoans(context, LoanStatus.disbursed),
//         ),
//       ],
//     );
//   }
//
//   void _openLoans(BuildContext context, LoanStatus status) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
//       return MultiBlocProvider(
//         providers: [BlocProvider(create: (ctx2) => locator.get<LoansCubit>())],
//         child: LoansScreen(
//           defaultFilters: LoanFilters(status: status),
//         ),
//       );
//     }));
//   }
// }
