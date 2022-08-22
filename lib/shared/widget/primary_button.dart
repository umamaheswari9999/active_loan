
import 'package:flutter/material.dart';

import '../../widgets/styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.onPressed,
    this.padding,
    this.elevation = 6,
    this.primary,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final EdgeInsets? padding;
  final double elevation;
  final Color? primary;

  @override
  Widget build(BuildContext context) {
    final primaryColor = primary ?? AppColors.primaryBlue;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        elevation: elevation,
        shadowColor: const Color(0x7040BFFF),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
        ),
      ),
    );
  }
}
