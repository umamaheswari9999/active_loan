import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/kycVerificationndDetails/domain/simpleClass.dart';
import '../../../shared/context_utils.dart';
import '../../../shared/widget/attachment_selector_widget.dart';
import '../../../shared/widget/failure_widget.dart';
import '../../../shared/widget/primary_button.dart';
import '../bloc/add_attachment/add_attachment_cubit.dart';
import '../bloc/attachment_doc_types/attachment_doc_types_cubit.dart';
import 'choice_chip_list_widget.dart';

class AddAttachmentWidget extends StatefulWidget {
  const AddAttachmentWidget({
    Key? key,
    required this.loanId,
  }) : super(key: key);

  final String loanId;

  @override
  State<AddAttachmentWidget> createState() => _AddAttachmentWidgetState();
}

class _AddAttachmentWidgetState extends State<AddAttachmentWidget> {
  Simple? _docType;
  File? _file;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddAttachmentCubit, AddAttachmentState>(
      listener: (ctx, state) {
        state.maybeWhen(
          success: (attachment) {
            Navigator.of(context).pop(true);
          },
          failure: (f) {
            f.maybeWhen(
              invalidFieldValue: (error) {
                showErrorDialog(context, error ?? 'Please select all values');
              },
              serverFailure: (code, error) {
                showErrorDialog(context, error);
              },
              orElse: () {
                showErrorDialog(context, 'Uh oh. File upload failed');
              },
            );
          },
          orElse: () {},
        );
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text('Add New Attachment'),
                const Spacer(),
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.clear)),
              ],
            ),
            const SizedBox(height: 8),
            BlocBuilder<AttachmentDocTypesCubit, AttachmentDocTypesState>(
              builder: (ctx, state) {
                return state.when(
                  initial: () => const Center(child: CircularProgressIndicator()),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  success: (types) {
                    return ChoiceChoiceListWidget(
                      title: 'Type',
                      items: types
                          .map((e) => Simple(id: e.id, title: e.title))
                          .toList(),
                      onSelected: (selected) {
                        var _selected = types.where((element) => selected == element.id).toList();
                        if (_selected.isNotEmpty) {
                          _docType = _selected[0];
                        }
                      },
                    );
                  },
                  failure: (f) {
                    return FailureWidget(
                        failure: f,
                        onRefresh: () {
                          BlocProvider.of<AttachmentDocTypesCubit>(context)
                              .fetchAttachmentDocTypes();
                        });
                  },
                );
              },
            ),
            const SizedBox(height: 8),
            AttachmentSelectorInputField(
              title: 'SELECT FILE',
              onAttachmentSelected: (file) {
                _file = file;
              },
            ),
            const SizedBox(height: 8),
            BlocBuilder<AddAttachmentCubit, AddAttachmentState>(
              builder: (ctx, state) {
                var isLoading =
                    state.maybeMap(orElse: () => false, loading: (_) => true);

                return PrimaryButton(
                  text: isLoading ? 'Please wait...' : 'UPLOAD',
                  onPressed: isLoading
                      ? null
                      : () {
                          BlocProvider.of<AddAttachmentCubit>(context)
                              .addAttachment(
                            recordId: widget.loanId,
                            docType: _docType,
                            file: _file,
                          );
                        },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
