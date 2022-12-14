import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({

    required this.text,
    required this.onClicked,
  }) ;

  @override
  Widget build(BuildContext context) => RaisedButton(
    onPressed: onClicked,
    color: Theme.of(context).primaryColor,
    shape: StadiumBorder(),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
