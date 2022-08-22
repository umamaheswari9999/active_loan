
import 'package:active_loan/shared/loan_search_bar.dart';
import 'package:active_loan/shared/styles.dart';
import 'package:active_loan/shared/widget/failure_widget.dart';
import 'package:active_loan/shared/widget/loading_list_widget.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../../../shared/widget/empty_list_widget.dart';
import '../../../shared/widget/go_back.dart';
import '../../domain/entity/loan.dart';
import '../../domain/entity/loan_filters.dart';
import '../../domain/entity/loan_status.dart';
import '../bloc/loans/loans_cubit.dart';
import '../widget/loan_filters_drawer.dart';
import '../widget/recent_loan_card.dart';

class LoansScreen extends StatefulWidget {
  const LoansScreen({
    Key? key,
    this.defaultFilters,
  }) : super(key: key);

  final LoanFilters? defaultFilters;

  @override
  State<LoansScreen> createState() => _LoansScreenState();
}

class _LoansScreenState extends State<LoansScreen> {
  late LoanFilters _filters;
  late ScrollController _scrollController;
  final DateTime _defStartDate = DateTime.now().subtract(const Duration(days: 30));

  @override
  void initState() {
    super.initState();
    _filters = widget.defaultFilters ?? const LoanFilters(
      status: LoanStatus.all
    );

    _filters = _filters.copyWith(
      fromDate: DateTime.now().subtract(const Duration(days: 30)),
      toDate: DateTime.now(),
    );

    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    BlocProvider.of<LoansCubit>(context).fetchInitial(_filters);
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      BlocProvider.of<LoansCubit>(context).fetchMore(_filters);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const LoanFiltersDrawer(),
      appBar: AppBar(
        title: const Text('Browse Loans'),
        leading: const GoBack(),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: const <Widget>[
          SizedBox(width: 0, height: 0),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoanSearchBar(
                displayFilters: false,
                enabled: true,
                autoFocus: false,
                onSearch: (query) {
                  setState(() {
                    _filters = _filters.copyWith(searchQuery: query);
                    _fetchLoans(context);
                  });
                },
                onCancel: () {
                  setState(() {
                    _filters = _filters.copyWith(searchQuery: null);
                    _fetchLoans(context);
                  });
                },
                onFiltersClicked: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 6,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.lightGrey,
                      ),
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<LoanStatus>(
                            value: _filters.status,
                            style: Theme.of(context).textTheme.bodyText1,
                            borderRadius: BorderRadius.circular(8.0),
                            items: const [
                              DropdownMenuItem(child: Text('All'), value: LoanStatus.all,),
                              DropdownMenuItem(child:  Text('Draft'), value: LoanStatus.draft),
                              DropdownMenuItem(child: Text('Pre Approved'), value: LoanStatus.preApproved),
                              DropdownMenuItem(child: Text('Disbursed'), value: LoanStatus.disbursed),
                              DropdownMenuItem(child: Text('Rejected'), value: LoanStatus.rejected),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _filters = _filters.copyWith(status: value);
                                _fetchLoans(context);
                              });
                            },
                            hint: const Text('status'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.primary),
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.lightGrey,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: InkWell(
                        onTap: () {
                          showDateRangePicker(
                              context: context,
                              firstDate: DateTime.now().subtract(Duration(days: 365 * 2)),
                              lastDate: DateTime.now(),
                              initialDateRange: DateTimeRange(
                                start: _filters.fromDate!,
                                end: _filters.toDate!,
                              )).then((value) {
                            if (value != null) {
                              setState(() {
                                _filters = _filters.copyWith(
                                  fromDate: value.start,
                                  toDate: value.end
                                );
                                _fetchLoans(context);
                              });
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Text('${DateFormat("d MMM").format(_filters.fromDate!)} - ${DateFormat("d MMM").format(_filters.toDate!)}'),
                            const SizedBox(width: 6),
                            const Icon(FeatherIcons.calendar, size: 16)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
        elevation: 1,
      ),
      body: BlocBuilder<LoansCubit, LoansState>(
        builder: (ctx, state) {
          return state.when(
            initial: () => const LoadingListWidget(),
            loading: () => const LoadingListWidget(),
            success: (loans, hasReachedMax) => _buildList(loans, hasReachedMax),
            failure: (f) => Center(
              child: FailureWidget(
                failure: f,
                onRefresh: () => _fetchLoans(context),
              ),
            ),
          );
        },
      ),
    );
  }

  void _fetchLoans(BuildContext context) {
    BlocProvider.of<LoansCubit>(context).fetchInitial(_filters);
  }

  Widget _buildChipWidget(String title, LoanStatus status) {
    return ChoiceChip(
      label: Text(title),
      selected: _filters.status == status,
      onSelected: (bool selected) {
        setState(() {
          _filters = _filters.copyWith(status: selected ? status : null);
          _fetchLoans(context);
        });
      },
    );
  }

  Widget _buildList(List<Loan> loans, bool hasReachedMax) {
    if (loans.isEmpty) {
      return Center(
        child: EmptyListWidget(
          message: 'No loans found with that query. Try changing some filters',
          onRefresh: () => _fetchLoans(context),
        ),
      );
    }

    return ListView.separated(
      controller: _scrollController,
      itemCount: loans.length + (hasReachedMax ? 0 : 1),
      padding: const EdgeInsets.all(12),
      separatorBuilder: (ctx, idx) => const SizedBox(height: 6),
      itemBuilder: (ctx, idx) {
        if (idx >= loans.length) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 48.0,
                    height: 48.0,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: double.infinity,
                          height: 8.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                        ),
                        Container(
                          width: 40.0,
                          height: 8.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }

        return RecentLoanCard(loan: loans[idx]);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
