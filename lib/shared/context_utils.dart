
import 'package:active_loan/shared/widget/primary_button.dart';
import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
        ),
      ),
      elevation: 16.0,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(16.0),
    ),
  );
}


Future<void> showErrorDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => AlertDialog(
      title: CircleAvatar(
        radius: 24,
        child: const Icon(Icons.warning_amber_rounded),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
      content: Text(
        message,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.red),
        textAlign: TextAlign.center,
      ),
      actions: [
        PrimaryButton(
            text: 'OKAY',
            onPressed: () => Navigator.of(context).pop())
      ],
    ),
  );
}