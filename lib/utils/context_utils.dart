import 'package:active_loan/widgets/primary_buttons.dart';
import 'package:flutter/material.dart';

import '../features/data/constants/constants.dart';

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


void showErrorDialog(String message,BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Colors.lightBlueAccent,
          content: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'OKAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        );
      });
}

Widget buildbar(int value) {
  return Container(
    width: 200,
    height: 10,
    decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white),
    child: LinearProgressIndicator(
      value: value / 100,
      backgroundColor: Colors.white,
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
    ),
  );
}

Widget OTPtextSection(TextEditingController controller,BuildContext context) {
  return SizedBox(
    height: 50,
    width: 40,
    child: TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      controller: controller,
      maxLength: 1,
      cursorColor: Theme.of(context).primaryColor,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
          hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
double getLoanProgressPercentage(String status) {


  switch (status) {
    case LoanStage.draft:
      return 0.1;
    case LoanStage.reviewKyc:
    case LoanStage.waitingForKyc:
      return 0.3;
    case LoanStage.additionalInfo:
      return 0.4;
    case LoanStage.bankDetails:
      return 0.5;
    case LoanStage.loanRequirements:
      return 0.6;
    case LoanStage.waitingForPreApproval:
    case LoanStage.waitingForCallVerification:
    case LoanStage.preApproved:
      return 0.9;
    default:
      return 0.8;
  }
}


progressBarValue(String lDSApploanstatus) {
  if (lDSApploanstatus == "DR") {
    return 10;
  } else if (lDSApploanstatus == "RKYC") {
    return 20;
  } else if (lDSApploanstatus == "WKYC") {
    return 30;
  } else if (lDSApploanstatus == "AI") {
    return 40;
  } else if (lDSApploanstatus == "BD") {
    return 50;
  } else if (lDSApploanstatus == "LR") {
    return 60;
  } else if (lDSApploanstatus == "WPA" ||
      lDSApploanstatus == "PA" ||
      lDSApploanstatus == "WCV") {
    return 90;
  } else {
    return 80;
  }
}
