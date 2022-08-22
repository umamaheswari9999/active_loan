
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../failure.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    Key? key,
    required this.failure,
    required this.onRefresh,
  }) : super(key: key);

  final Failure failure;
  final Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/server_issue.svg',
            height: 150,
            width: 150,
            semanticsLabel: 'Something went wrong',
          ),
          const SizedBox(height: 16),
          failure.when(
            invalidFieldValue: (message) => Text('Some fields contain illegal values. $message'),
            noInternet: () => const Text('No internet connection'),
            unAuthorized: () => const Text('Un Authorized'),
            serverFailure: (code, message) => Text('Unfortunately something went wrong. Please contact support team. \n [$code] [$message]', textAlign: TextAlign.center,),
            unknownApiFailure: () => const Text('Unknown API failure.'),
            unknownFailure: () => const Text('Uh oh. something is not right. Please try again'),
            apiFailure: (message) => Text(message),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: onRefresh,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
              elevation: 0,
              shadowColor: const Color(0x7040BFFF),
            ),
            child: Text(
              'TRY AGAIN',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}