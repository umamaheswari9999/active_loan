
import 'package:active_loan/loans/domain/entity/emi_plan.dart';
import 'package:active_loan/loans/domain/repo/loan_repo.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'emi_plans_cubit.freezed.dart';

part 'emi_plans_state.dart';

@injectable
class EmiPlansCubit extends Cubit<EmiPlansState> {
  EmiPlansCubit(this.repo) : super(const EmiPlansState.initial());

  final LoanRepo repo;
  final pageLength = 20;

  void fetchInitial({String? query}) async {
    emit(const EmiPlansState.loading());

    var result = await repo.fetchEmiPlans(0, pageLength, query);
    result.fold(
          (l) => emit(EmiPlansState.failure(l)),
          (r) => emit(
        EmiPlansState.success(
          records: r,
          hasReachedMax: r.length < pageLength,
        ),
      ),
    );
  }

  void fetchMore({String? query}) async {
    state.maybeWhen(
        success: (oldRecord, hasReachedMax) async {
          if (!hasReachedMax) {
            final result = await repo.fetchEmiPlans(
              oldRecord.length,
              oldRecord.length + pageLength,
  query,
            );
            result.fold(
                  (f) => emit(EmiPlansState.failure(f)),
                  (r) => emit(
                EmiPlansState.success(
                  records: oldRecord + r,
                  hasReachedMax: r.length < pageLength,
                ),
              ),
            );
          }
        },
        orElse: () {}
    );
  }
}
