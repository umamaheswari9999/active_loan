import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class AttachmentSelectorInputField extends StatefulWidget {
  final String title;
  final String? fileName;
  final Function(File) onAttachmentSelected;

  const AttachmentSelectorInputField({
    Key? key,
    required this.title,
    required this.onAttachmentSelected,
    this.fileName,
  }) : super(key: key);

  @override
  _AttachmentSelectorInputFieldState createState() =>
      _AttachmentSelectorInputFieldState();
}

class _AttachmentSelectorInputFieldState
    extends State<AttachmentSelectorInputField> {
  File? _selectedFile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.title.toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: 8),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(_selectedFile == null
              ? 'No File Selected'
              : widget.fileName != null
              ? '${widget.fileName!.toUpperCase()}${path.extension(_selectedFile!.path)}'
              .toUpperCase()
              : _selectedFile!.path),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(),
            ),
            child: _selectedFile == null
                ? Container(
              width: 64,
            )
                : SizedBox(
              width: 64,
              child: Image.file(
                _selectedFile!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          trailing: InkWell(
            onTap: _startAttachmentSelectionFlow,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(Icons.attachment),
            ),
          ),
        ),
      ],
    );
  }

  void _closeBottomSheet() {
    Navigator.of(context).pop();
  }

  Future<void> _handleFileSelection(File selectedFile) async {
    widget.onAttachmentSelected(selectedFile);
    setState(() {
      _selectedFile = selectedFile;
    });
  }

  void _startAttachmentSelectionFlow() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      _closeBottomSheet();
                      final selectedFile = await ImagePicker.platform
                          .pickImage(source: ImageSource.camera);

                      if (selectedFile != null) {
                        _handleFileSelection(File(selectedFile.path));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(Icons.camera),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Camera')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      _closeBottomSheet();
                      final selectedFile = await ImagePicker.platform
                          .pickImage(source: ImageSource.gallery);

                      if (selectedFile != null) {
                        _handleFileSelection(File(selectedFile.path));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(Icons.image),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Gallery')
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      _closeBottomSheet();

                      final file = await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ["jpg", "png", "jpeg"],
                      );

                      if (file != null &&
                          file.isSinglePick == true &&
                          file.count > 0) {
                        _handleFileSelection(File(file.files[0].path!));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(Icons.smartphone),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Phone')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}