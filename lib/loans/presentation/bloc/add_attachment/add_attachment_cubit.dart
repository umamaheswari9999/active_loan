import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../features/kycVerificationndDetails/domain/simpleClass.dart';
import '../../../../shared/failure.dart';
import '../../../domain/entity/attachment.dart';
import '../../../domain/repo/loan_repo.dart';

part 'add_attachment_cubit.freezed.dart';

@injectable
class AddAttachmentCubit extends Cubit<AddAttachmentState> {
  final LoanRepo repo;

  AddAttachmentCubit(this.repo)
      : super(const AddAttachmentState.initial());

  void addAttachment({String? recordId, Simple? docType, File? file}) async {
    emit(const AddAttachmentState.loading());
    try {
      if (recordId == null) {
        emit(AddAttachmentState.failure(Failure.invalidFieldValue('record id not found')));
      } else if (docType == null) {
        emit(AddAttachmentState.failure(Failure.invalidFieldValue('Please select document type')));
      } else if (file == null) {
        emit(AddAttachmentState.failure(Failure.invalidFieldValue('Please select file')));
      } else if (file.existsSync() == false) {
        emit(AddAttachmentState.failure(Failure.invalidFieldValue('File does not exist')));
      } else {
        final result = await repo.uploadFile(recordId, docType, file);
        emit(
          result.fold(
                (l) => AddAttachmentState.failure(l),
                (r) => AddAttachmentState.success(r),
          ),
        );
      }
    } catch (e, st) {
      emit(
        AddAttachmentState.failure(
          Failure.unknownFailure(),
        ),
      );
    }
  }
}

@freezed
abstract class AddAttachmentState with _$AddAttachmentState {
  const factory AddAttachmentState.initial() = _AddAttachmentInitial;

  const factory AddAttachmentState.loading() = _AddAttachmentLoading;

  const factory AddAttachmentState.success(Attachment attachment) =
  _AddAttachmentSuccess;

  const factory AddAttachmentState.failure(Failure failure) = _AddAttachmentFailure;
}