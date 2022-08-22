import 'package:active_loan/shared/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as logger;
import '../../domain/entity/other_charges.dart';
import '../../domain/repo/emi_charges_repo.dart';
part 'other_charges_bloc.freezed.dart';
@injectable
class OtherChargesBloc extends Cubit<OtherChargesState> {
  final EmiChargesRepo otherChargesRepo;
  OtherChargesBloc({required this.otherChargesRepo})
      : super(const OtherChargesState.initial());
  FetchOtherCharges(String id) async {
    emit(const OtherChargesState.loading());
    try {
      var res = await otherChargesRepo.FetchOtherCharges(id);
      res.fold(
          (l) =>
              emit(OtherChargesState.failure(Failure.apiFailure(l.toString()))),
          (r) {
        emit(OtherChargesState.success(otherCharges: r));
      });
    }
    catch (e, st) {
      logger.log(e.toString());
      emit(OtherChargesState.failure(Failure.apiFailure(e.toString())));
    }
  }
}

@freezed
abstract class OtherChargesState with _$OtherChargesState {
  const factory OtherChargesState.initial() = _Initial;
  const factory OtherChargesState.loading() = _Loading;
  const factory OtherChargesState.success(
      {required List<OtherCharges> otherCharges}) = _Success;
  const factory OtherChargesState.failure(Failure failure) = _Failure;
}
