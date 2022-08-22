
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../widgets/base_dto.dart';
import '../../domain/entity/attachment.dart';

part 'attachment_dto.freezed.dart';

part 'attachment_dto.g.dart';

@freezed
class AttachmentDto with _$AttachmentDto, BaseDto<AttachmentDto, Attachment> {
  const AttachmentDto._();

  const factory AttachmentDto({
    required String id,
    required String name,
    @JsonKey(defaultValue: '') required String description,
  }) = _AttachmentDto;

  factory AttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentDtoFromJson(json);

  @override
  AttachmentDto fromJson(Map<String, dynamic> json) =>
      AttachmentDto.fromJson(json);

  @override
  Attachment toDomain() {
    return Attachment(
      id: id,
      name: name,
      description: description,
    );
  }
}