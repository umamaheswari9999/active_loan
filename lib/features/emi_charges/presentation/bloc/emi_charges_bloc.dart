import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as logger;

import '../../domain/entity/emi_charges.dart';
import '../../domain/repo/emi_charges_repo.dart';
part 'emi_charges_bloc.freezed.dart';

@injectable
class EmiChargesBloc extends Cubit<EmiChargesState> {
  final EmiChargesRepo emiChargesRepo;
  EmiChargesBloc({required this.emiChargesRepo})
      : super(EmiChargesState.initial());

  fetchEmis(String id) async {
    emit(EmiChargesState.loading());
    try {
      var res = await emiChargesRepo.fetchEmis(id);
      res.fold(
          (l) =>
              emit(EmiChargesState.failure(Failure.apiFailure(l.toString()))),
          (r) {
        emit(EmiChargesState.success(myLoansinf: r));
      });
    } catch (e, st) {
      logger.log(e.toString());
      emit(EmiChargesState.failure(Failure.apiFailure(e.toString())));
    }
  }
}

@freezed
abstract class EmiChargesState with _$EmiChargesState {
  const factory EmiChargesState.initial() = _Initial;
  const factory EmiChargesState.loading() = _Loading;
  const factory EmiChargesState.success(
      {required List<EmiCharges> myLoansinf}) = _Success;
  const factory EmiChargesState.failure(Failure failure) = _Failure;
}
