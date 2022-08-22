
import 'package:flutter/material.dart';

import '../../../features/kycVerificationndDetails/domain/simpleClass.dart';
import '../../../shared/logger.dart';
import '../../../shared/styles.dart';

class ChoiceChoiceListWidget extends StatefulWidget {
  const ChoiceChoiceListWidget({
    Key? key,
    required this.title,
    required this.items,
    required this.onSelected,
    this.defaultSelection,
    this.dropdownViewStyle = true,
  }) : super(key: key);

  final String title;
  final List<Simple> items;
  final String? defaultSelection;
  final bool dropdownViewStyle;
  final void Function(String) onSelected;

  @override
  State<ChoiceChoiceListWidget> createState() => _ChoiceChoiceListWidgetState();
}

class _ChoiceChoiceListWidgetState extends State<ChoiceChoiceListWidget> {
  String? _selectedId;

  @override
  void initState() {
    super.initState();
    _selectedId = widget.defaultSelection;
    devLog(_selectedId ?? 'not-selected');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.title.toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: 4),
        if (widget.dropdownViewStyle) Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          // padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                value: _selectedId,
                style: Theme.of(context).textTheme.bodyText1,
                borderRadius: BorderRadius.circular(8.0),
                items: widget.items
                    .map(
                      (e) => DropdownMenuItem<String>(
                          child:
                              Text(e.title, overflow: TextOverflow.visible),
                          value: e.id),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    widget.onSelected(value!);
                    _selectedId = value;
                  });
                },
                hint: Text(widget.title),
                isExpanded: true,
              ),
            ),
          ),
        ),
        if (!widget.dropdownViewStyle)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 12,
              children: [
                ...widget.items
                    .map(
                      (e) => ChoiceChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 8.0),
                        label: Text(e.title),
                        selected: _selectedId == e.id,
                        selectedColor: Theme.of(context).colorScheme.primary,
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        onSelected: (selected) {
                          if (selected) {
                            setState(() {
                              widget.onSelected(e.id);
                              _selectedId = e.id;
                            });
                          } else {
                            setState(() {
                              widget.onSelected('');
                              _selectedId = null;
                            });
                          }
                        },
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
      ],
    );
  }
}
