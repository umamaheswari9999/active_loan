import 'package:bloc/bloc.dart';
import 'package:active_loan/my_loans/domain/repo/my_loans_repo.dart';
import 'package:active_loan/my_loans/presentation/bloc/my_loans_event.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as logger;
import 'my_loans_state.dart';

@injectable
class MyLoansBloc extends Bloc<MyLoansEvent, MyLoansState> {
  final MyLoansRepo myLoansRepo;
  MyLoansBloc(this.myLoansRepo) : super(MyLoansStateInitial()) {
    on<FetchMyloansEvent>((event, emit) async {
      emit(MyLoansStateLoading());
      try {
        var res = await myLoansRepo.fetchMyLoans();
        res.fold((l) => emit(const MyLoansStateFailure('Verification Failed')),
            (r) => emit(MyLoansStateSuccess(myloans: r)));
      } catch (err, st) {
        logger.log(err.toString());
        logger.log(st.toString());
        emit(const MyLoansStateFailure('Verification Failed'));
      }
    });
  }
}
