import 'package:flutter/material.dart';


class MyCustomInputBox extends StatefulWidget {
  String inputHint;
  final void Function(String)  onChanged;
  TextEditingController inputFieldController;
  MyCustomInputBox({required this.inputHint,required this.inputFieldController, required this.onChanged});
  @override
  _MyCustomInputBoxState createState() => _MyCustomInputBoxState();
}
class _MyCustomInputBoxState extends State<MyCustomInputBox> {
  bool isSubmitted = false;
  final checkBoxIcon = 'assets/checkbox.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 15),
          child: TextFormField(
            controller: widget.inputFieldController,
            onChanged: widget.onChanged,
            style: const TextStyle(
                fontSize: 19,
                color: Color(0xff0962ff),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
              focusColor: const Color(0xff0962ff),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0xff0962ff)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),

              // will turn the visibility of the 'checkbox' icon
              // ON or OFF based on the condition we set before

            ),
          ),
        ),

        //
      ],
    );
  }
}