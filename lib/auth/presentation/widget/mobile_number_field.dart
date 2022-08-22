import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injection.dart';
import '../../../shared/context_utils.dart';
import '../../../sign_up/presentation/sigun_up_page.dart';
import '../../../widgets/styles.dart';

import '../widget/app_version_text.dart';

class MobileNumberWidget extends StatefulWidget {
  final void Function(String number) sendNumber;
  const MobileNumberWidget({Key? key, required this.sendNumber})
      : super(key: key);
  @override
  _MobileNumberWidgetState createState() => _MobileNumberWidgetState();
}

class _MobileNumberWidgetState extends State<MobileNumberWidget> {
  final mobilnoController = TextEditingController(text: '9704578117');
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Theme.of(context).colorScheme.primary.withAlpha(60),
              ])),
      child: _mobileNumberbuildBody(),
    );
  }

  Widget _buildMobilenumberField() {
    return TextField(
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
        contentPadding: const EdgeInsets.all(24.0),
        hintText: "Mobile Number",
        prefixIcon: const Icon(FeatherIcons.phone),
        prefixIconColor: Colors.blueGrey,
      ),
      autocorrect: false,
      keyboardType: TextInputType.number,
      controller: mobilnoController,
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }

  Widget _buildRaisedButton() {
    return ElevatedButton(
      onPressed: () {
        if (validateMobile(mobilnoController)) {
          widget.sendNumber(mobilnoController.text);
          BlocProvider.of<SignInBloc>(context)
              .add(UserSignIn(mobilnoController.text,null,null,false));
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        elevation: 6,
        shadowColor: const Color(0x7040BFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // primary: Theme.of(context).colorScheme.primary,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Sign In".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _mobileNumberbuildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildMobilenumberField(),
        VerticalSpacing.small,
        VerticalSpacing.small,
        _buildRaisedButton(),
        VerticalSpacing.large,
        Center(
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black87),
                ),
                TextSpan(
                  text: ' Sign Up',
                  style: const TextStyle(color: Colors.blueAccent),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>
                              BlocProvider(create: (context) => locator.get<SignInBloc>(),
                              child: SignUpPage())));
                    },
                ),
              ],
            ),
          ),
        )
        // const AppVersionText(),
      ],
    );
  }

  bool validateMobile(mobileController) {
    String patttern = r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$';
    RegExp regExp = RegExp(patttern);
    if (mobileController.text.length == 0) {
      showSnackbar(context, "Please enter mobile number");
      return false;
    } else if (!regExp.hasMatch(mobileController.text)) {
      showErrorDialog(context, 'Please enter valid mobile number');
      return false;
    }
    return true;
  }
}
