
import 'package:active_loan/loans/domain/entity/note.dart';
import 'package:active_loan/shared/failure.dart';
import 'package:active_loan/shared/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repo/loan_repo.dart';

part 'add_note_cubit.freezed.dart';

part 'add_note_state.dart';

@injectable
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit(this.repo) : super(const AddNoteState.initial());

  final LoanRepo repo;

  void addNote(String recordId, String note) async {
    try {
      const AddNoteState.loading();

      final result = await repo.insertNote(recordId, note);
      result.fold(
        (l) => emit(AddNoteState.failure(l)),
        (r) => emit(AddNoteState.success(r)),
      );
    } catch (e, st) {
      logError(e, st, '[bloc] could not add note');
      emit(AddNoteState.failure(Failure.unknownFailure()));
    }
  }
}
