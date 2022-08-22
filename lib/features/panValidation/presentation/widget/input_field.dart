import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.validator,
    this.maxLength,
    this.readOnly = false,
    this.textCapitalization = TextCapitalization.none,
    this.textInputType = TextInputType.text, required TextInputType keyboardType,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator:  validator ,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        contentPadding: const EdgeInsets.all(16.0),
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: Colors.blueGrey,
        suffixIcon: suffixIcon,
        counter: null,
        counterText: '',
      ),
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      autocorrect: false,
      keyboardType: textInputType,
      controller: controller,
      readOnly: readOnly,
      textInputAction: TextInputAction.next,
      maxLength: maxLength,
    );
  }
}
