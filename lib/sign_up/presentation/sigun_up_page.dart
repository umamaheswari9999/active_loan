import 'dart:convert';

import 'package:active_loan/auth/presentation/bloc/otp_verification/otp_verification_bloc.dart';
import 'package:active_loan/auth/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../auth/presentation/screen/otp_verification_screen.dart';
import '../../auth/presentation/widget/otp_verify.dart';
import '../../di/injection.dart';
import '../../features/data/constants/basic_Auth.dart';
import '../../features/data/constants/constants.dart';
import '../../features/panValidation/presentation/widget/input_field.dart';
import '../../otp_verification_page.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  late String number;
  bool _isLoading = false;
  // List<Details> listofDetails = [];
  TextEditingController NameController = TextEditingController();
  TextEditingController AadharController = TextEditingController();
  TextEditingController moblileNumberController = TextEditingController();
  bool isExist = false;
  DateTime? _dob;
  String? _selectedgender;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          print(state);
          if (state is SignInStateSuccess) {
            print(state.signInStatus);
            if (state.signInStatus) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BlocProvider(
                      create: (context) => locator.get<VerifyBloc>(),
                      child: OtpVerificationScreen(moblileNumberController.text,AadharController.text,NameController.text))));
            }
          }
        },
        builder: (context, state) {
          if (state is SignInStateLoading) {
            return const Center(child: CupertinoActivityIndicator());
          }
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_outlined),
                        highlightColor: Colors.white,
                        alignment: Alignment.topLeft,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Text(
                        'Create Account',
                        style:
                            Theme.of(context).textTheme.headline5?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'To continue, please enter customer details',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      const SizedBox(height: 12),
                      InputField(
                        controller: NameController,
                        hintText: 'Customer Name',
                        prefixIcon: const Icon(FeatherIcons.code),
                        onChanged: (value) {},
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      InputField(
                        controller: moblileNumberController,
                        hintText: 'Mobile Number',
                        prefixIcon: const Icon(FeatherIcons.code),
                        maxLength: 10,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value.length != 10) {
                            return 'Please enter valid number';
                          } else {
                            validateMobilenumber(value).then((res) {
                              if (res) {
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$value is Already Existed'),padding: EdgeInsets.all(10),duration: Duration(milliseconds: 900),));
                              } else {
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$value is Available')));
                              }
                            });
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 12),
                      InputField(
                        controller: AadharController,
                        hintText: 'Aadhar Number',
                        prefixIcon: const Icon(FeatherIcons.code),
                        onChanged: (value) {},
                        maxLength: 12,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value.length != 12) {
                            return 'Please enter valid number';
                          } else {
                            validateAadharnumber(value).then((res) {
                              if (res) {
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$value is Already Existed'),padding: EdgeInsets.all(10),duration: Duration(milliseconds: 900),));
                              } else {
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$value is Available')));
                              }
                            });
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                        onPressed: () {
                          if (NameController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(milliseconds: 900),
                                    elevation: 5,
                                    content: Text('Please Enter User Number',
                                        textAlign: TextAlign.center),
                                    padding: EdgeInsets.all(16)));
                          } else if (moblileNumberController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(milliseconds: 900),
                                    elevation: 5,
                                    content: Text(
                                        'Please Enter Mobile Number',
                                        textAlign: TextAlign.center),
                                    padding: EdgeInsets.all(16)));
                          } else if (AadharController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(milliseconds: 900),
                                    elevation: 5,
                                    content: Text(
                                        'Please Enter Aadhaar Number',
                                        textAlign: TextAlign.center),
                                    padding: EdgeInsets.all(16)));
                          } else {
                            String pattern = r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$';
                            RegExp regExp = RegExp(pattern);
                            if (regExp.hasMatch(moblileNumberController.text)) {
                              BlocProvider.of<SignInBloc>(context).add(
                                  UserSignIn(moblileNumberController.text,AadharController.text,NameController.text,true));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      duration: Duration(milliseconds: 900),
                                      elevation: 5,
                                      content: Text('Invalid Mobile Number',
                                          textAlign: TextAlign.center),
                                      padding: EdgeInsets.all(16)));
                            }
                          }
                        },
                        child: Text(
                          'Confirm PAN details'.toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<bool> validateMobilenumber(String mobileNo) async {
  var headers = <String, String>{
    'authorization': BasicAuth().basicAuthentication()
  };
  final response2 = await http.get(
      Uri.parse(
          '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=username=\'${mobileNo}\'&_endRow=0&_selectedProperties=username'),
      headers: headers);
  if (response2.statusCode == 200) {
    final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;
    final res2 = responsebody2['response'] as Map<String, dynamic>;
    if (res2['totalRows'] == 0) {
      return false;
    }
    return true;
  } else {
    throw Exception('Failed to load album');
  }
}

Future<bool> validateAadharnumber(String aadharno) async {
  var headers = <String, String>{
    'authorization': BasicAuth().basicAuthentication()
  };
  final response2 = await http.get(
      Uri.parse(
          '${Constants.baseDefaultApiUrl}/${Entities.user}?_where=alternativePhone=\'${aadharno}\'&_endRow=0&_selectedProperties=username,alternativePhone'),
      headers: headers);
  if (response2.statusCode == 200) {
    final responsebody2 = jsonDecode(response2.body) as Map<String, dynamic>;
    final res2 = responsebody2['response'] as Map<String, dynamic>;
    if (res2['totalRows'] == 0) {
      return false;
    }
    return true;
  } else {
    throw Exception('Failed to load album');
  }
}
