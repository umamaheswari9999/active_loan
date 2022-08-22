import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(FeatherIcons.arrowLeftCircle),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
