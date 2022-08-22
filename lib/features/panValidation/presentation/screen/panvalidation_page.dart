import 'package:active_loan/features/homeScreen/presentation/homeconstants.dart';
import 'package:active_loan/features/panValidation/presentation/widget/pan_input_field.dart';
import 'package:active_loan/features/panValidation/repo/formCreation/form_repository.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../utils/context_utils.dart';
import '../../../../di/injection.dart';
import '../../../kycVerificationndDetails/domain/staticData.dart';
import '../../domain/detailsfromClientmastervthifsc.dart';
import '../../repo/panValidations/repository/pan_repository.dart';
import '../widget/input_field.dart';
class PandetailsFetch extends StatefulWidget {
  const PandetailsFetch({Key? key}) : super(key: key);
  @override
  _PandetailsFetchState createState() => _PandetailsFetchState();
}

class _PandetailsFetchState extends State<PandetailsFetch> {
  bool _isLoading = false;
  List<Details> listofDetails = [];
  TextEditingController NameController = TextEditingController();
  TextEditingController AadharController = TextEditingController();
  TextEditingController GenderController = TextEditingController();
  TextEditingController PANController = TextEditingController();
  TextEditingController DateofbirthController = TextEditingController();
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IconButton(
                          icon: const Icon(Icons.arrow_back_outlined),
                          highlightColor: Colors.white,

                          alignment:Alignment.topLeft,

                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          'Let\'s Get Started',
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                    const SizedBox(height: 6),
                     const Text(
                    'To continue, please enter customer details',
                    textAlign: TextAlign.center,),
                  const SizedBox(height:12),
                  PANInputFieldWidget(
                    onChanged: (text) {
                      PANController.text = text.toUpperCase();
                      final val = TextSelection.collapsed(
                          offset: PANController.text.length);
                      PANController.selection = val;
                      setState(() {});
                      if (text.length == 10) {
                        locator.get<PanRepo>().Panvalidationsdigio(PANController.text,"AIVEJF5E8N3VRBGZNKJ1YT7V63V239P9","UWFHZCVPGVNPWIKLWFPGIB3XKSBQA1CM").then((panValidationvalues) {
                          if ( panValidationvalues!=null  && panValidationvalues.status == 'VALID'){
                          locator.get<PanRepo>().fetchingUserClientmaster(PANController.text).then((value) {
                              if (value.isEmpty) {
                                setState(() {
                                  NameController.text = panValidationvalues.full_name!;
                                });
                              } else {
                                DateFormat dateformat=DateFormat('yyyy-MM-dd');
                                DateFormat date=DateFormat('dd-MM-yyyy');
                                setState(() {
                                  listofDetails = value;
                                  _selectedgender = listofDetails[0].gender.toString();
                                  moblileNumberController.text = listofDetails[0].phone.toString();
                                  AadharController.text = listofDetails[0].aadhaarnumber.toString();
                                  NameController.text = listofDetails[0].lDSName.toString();
                                   DateofbirthController.text = date.format(dateformat.parse(listofDetails[0].dateofbirth!));
                                });
                              }
                            });
                          }
                          else if(panValidationvalues!.status == 'INVALID'){
                            showErrorDialog("Invalid PAN Number",context);
                          }
                        });
                      } else {
                        GenderController.text = "";
                        moblileNumberController.text = "";
                        AadharController.text = "";
                        NameController.text = "";
                        DateofbirthController.text = "";
                      }
                    },
                    onSubmit: (_) {},
                    controller: PANController,
                    hintText: 'PAN',
                    maxLength: 10,
                    title: 'PAN',
                    prefixIcon: const Icon(FeatherIcons.code),
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    controller: NameController,
                    hintText: 'Customer Name',
                    prefixIcon: const Icon(FeatherIcons.code),
                    onChanged: (value) {}, keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    controller:  DateofbirthController,
                    hintText: 'Date of birth',
                    prefixIcon: const Icon(FeatherIcons.calendar),
                    onChanged: (value) {},
                    onTap: () {
                      showDatePicker(
                        context: context,
                        fieldHintText: 'dd/mm/yyyy',
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now()
                            .subtract(const Duration(days: 365 * 80)),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        if (value != null) {
                          DateofbirthController.text = DateFormat.yMEd().format(value);
                          _dob = value;

                        }
                      });
                    },
                    readOnly: true, keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    controller: moblileNumberController,
                    hintText: 'Mobile Number',
                    prefixIcon: const Icon(FeatherIcons.code),
                    onChanged: (value) {},
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    controller: AadharController,
                    hintText: 'Aadhar Number',
                    prefixIcon: const Icon(FeatherIcons.code),
                    onChanged: (value) {},
                    maxLength: 12,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  const Text(
                    'GENDER',
                    //textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.blueGrey,
                        fontSize: 13.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800),
                  ),
                  Wrap(
                    spacing: 60,
                    children: [
                      for (var record in StaticData.genders)
                        ChoiceChip(
                          backgroundColor: Colors.black12,
                          selectedColor:
                          Theme.of(context).colorScheme.secondary,
                          label: Text(record.title),
                          selected: record.id == _selectedgender,
                          padding: const EdgeInsets.all(2),
                          labelStyle: const TextStyle(fontSize: 14),
                          onSelected: (selected) {
                            if (selected) {
                              _selectedgender = record.id;
                            } else {
                              _selectedgender = null;
                            }
                            setState(() {});
                          },
                        ),
                    ],
                  ),
                  //
                  Text(
                    "Please double check and confirm your  \n  PAN name before you continue",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff8f9db5).withOpacity(0.45),
                    ),
                    //
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 340,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {
                        locator.get<FormRepo>().formCreationuserDetails(NameController.text, PANController.text, AadharController.text, GenderController.text,
                            moblileNumberController.text, DateofbirthController.text).then((value) {
                              if(value){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageInt()));
                              }
                              else{
                                showErrorDialog('Please enter correct details',context);
                              }
                        } );
                      },

                      child: const Text(
                        'Confirm PAN details',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
