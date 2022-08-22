
import 'package:active_loan/features/kycVerificationndDetails/domain/clientmaster_locations.dart';
import 'package:active_loan/features/kycVerificationndDetails/domain/staticData.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../utils/context_utils.dart';
import '../../../di/injection.dart';
import '../../add_bank_details/presentation/bankdetails_page.dart';
import '../repo/additional_information/additionalInf_repo.dart';
import '../repo/kyc_repo/kyc_repo.dart';
import '../repo/ldsloanstatus/status_repo.dart';
import '../repo/locations_Clientmaster/location_repo.dart';

class KycVerification extends StatefulWidget {
  final String id;
  final String panno;
  final String lDSApploanstatus;
  final String prooftypenumber;
  final String mobilenumber;
  final String? gender;
  final String customername;
  const KycVerification(
      {required this.id,
      required this.panno,
      required this.lDSApploanstatus,
      required this.prooftypenumber,
      required this.mobilenumber,
      required this.gender,
      required this.customername});
  @override
  _KycVerificationState createState() => _KycVerificationState();
}

class _KycVerificationState extends State<KycVerification> {
  List<ClientMaster_Locations> myLocations = [];
  String customerName = "";
  String AadharNumber = "";
  String Addressline1 = "";
  String Addressline2 = "";
  String countryName = "";
  String stateName = "";
  String cityName = "";
  String postalCode = "";
  String Addressline1Per = "";
  String Addressline2Per = "";
  String countryNamePer = "";
  String stateNamePer = "";
  String cityNamePer = "";
  String postalCodePer = "";
  int _currentStep = 0;
  bool _isOTPRequired = false;
  String serverOTP = "";
  String currentAddres = "";
  String permanentAddres = "";
  StepperType stepperType = StepperType.vertical;
  TextEditingController OTPController1 = TextEditingController();
  TextEditingController OTPController2 = TextEditingController();
  TextEditingController OTPController3 = TextEditingController();
  TextEditingController OTPController4 = TextEditingController();
  TextEditingController OTPController5 = TextEditingController();
  TextEditingController OTPController6 = TextEditingController();
  String verify = "";
  var site;
  Color defColor = Colors.grey;
  Widget selection = const SizedBox();
  String? locationId;
  var id;
  String? _selectedgender;
  String? _selectedmaritalstatus;
  String? _selectedoccupation;
  String? _selectedresidency;

  final TextEditingController mobileController = TextEditingController();
  final TextEditingController AltermobileController = TextEditingController();
  final TextEditingController fatharNameController = TextEditingController();
  final TextEditingController motherNameController = TextEditingController();
  final TextEditingController employerNameController = TextEditingController();
  final TextEditingController officemobileController = TextEditingController();
  final TextEditingController officeemailController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController AnnualIncomeController = TextEditingController();
  final TextEditingController personalemailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.lDSApploanstatus == 'DR') {
      _currentStep = 0;
    } else if (widget.lDSApploanstatus == 'RKYC') {
      locator
          .get<LocationsRepo>()
          .fetchlocationsofUserfromclientmastwer(widget.panno)
          .then((value) {
        if (value.isNotEmpty) {
          myLocations.addAll(value);
          setState(() {});
        }
      });
      _currentStep = 1;
    } else if (widget.lDSApploanstatus == 'AI') {
      _selectedgender = widget.gender;
      mobileController.text = widget.mobilenumber;
      locator
          .get<AdditionalInfRepo>()
          .UpdatingSttatusoBDandAdditionaldatailsofUser(
              widget.id,
              _selectedgender,
              _selectedmaritalstatus,
              _selectedoccupation,
              _selectedresidency,
              widget.mobilenumber,
              AltermobileController.text,
              fatharNameController.text,
              employerNameController.text,
              officemobileController.text,
              officeemailController.text,
              designationController.text,
              AnnualIncomeController.text,
              personalemailController.text)
          .then((value) {
        if (value == true) {
          setState(() {});
        }
      });
      _currentStep = 2;
    } else if (widget.lDSApploanstatus == 'BD') {
      locator
          .get<LocationsRepo>()
          .fetchlocationsofUserfromclientmastwer(widget.panno)
          .then((value) {
        if (value.isNotEmpty) {
          setState(() {});
        }
      });
      _currentStep = 3;
    } else {
      _currentStep = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('KYC Verification'),

      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stepper(
            controlsBuilder: (context, details) {
              return Row(
                children: <Widget>[
                  Container(),
                  Container(),
                ],
              );
            },
            type: stepperType,
            physics: const ScrollPhysics(),
            currentStep: _currentStep,
            onStepTapped: (step) => tapped(step),
            onStepContinue: continued,
            onStepCancel: cancel,
            steps: <Step>[
              _isOTPRequired
                  ? Step(
                      title: const Text('OTP Verification'),
                      content: Column(
                        children: [
                          Row(
                            children: [
                              OTPtextSection(OTPController1, context),
                              const SizedBox(
                                width: 10,
                              ),
                              OTPtextSection(OTPController2, context),
                              const SizedBox(
                                width: 10,
                              ),
                              OTPtextSection(OTPController3, context),
                              const SizedBox(
                                width: 10,
                              ),
                              OTPtextSection(OTPController4, context),
                              const SizedBox(
                                width: 10,
                              ),
                              OTPtextSection(OTPController5, context),
                              const SizedBox(
                                width: 10,
                              ),
                              OTPtextSection(OTPController6, context),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                verify = OTPController1.text +
                                    OTPController2.text +
                                    OTPController3.text +
                                    OTPController4.text +
                                    OTPController5.text +
                                    OTPController6.text;

                                locator
                                    .get<KycRepo>()
                                    .VerifyKYCotpforUser(
                                        verify, serverOTP, widget.id)
                                    .then((value) {
                                  if (value == true) {
                                    if (_currentStep <= 0 &&
                                        value == true &&
                                        value != null) {
                                      locator
                                          .get<ApploanstatusUpdateRepo>()
                                          .UpdatingappStatustoRKYC(
                                            widget.id,
                                          );
                                      setState(() {
                                        _currentStep += 1;
                                      });
                                      if (_currentStep == 1) {
                                        locator
                                            .get<LocationsRepo>()
                                            .fetchlocationsofUserfromclientmastwer(
                                                widget.panno)
                                            .then((value) {
                                          if (value.isNotEmpty) {
                                            currentAddres =
                                                '$Addressline1\n$Addressline2\n$cityName,$postalCode\n$stateName,$countryName';
                                          }
                                        });
                                      }
                                    }
                                  } else {
                                    showErrorDialog('Invalid OTP', context);
                                  }
                                });
                              },
                              child: const Text("Verify"))
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    )
                  : Step(
                      title: const Text('KYC'),
                      content: Column(
                        children: <Widget>[
                          const Text(
                              "KYC is not completed for this customer.\n KYC is compulsory to disburse the loan.\n Do you want to proceed further?"),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 340,
                            height: 40,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: RaisedButton(
                                elevation: 0.0,
                                color: Colors.lightBlueAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                onPressed: () async {
                                  locator
                                      .get<KycRepo>()
                                      .SendKYCotpforUser(widget.id)
                                      .then((value) {
                                    if (value.isNotEmpty) {
                                      setState(() {
                                        _isOTPRequired = true;
                                        serverOTP = value;
                                      });
                                    }
                                  });
                                },
                                child: const Text(
                                  'START KYC',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
              Step(
                title: const Text('KYC Review'),
                content: Column(
                  children: <Widget>[
                    const Text(
                      'Current Address',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueGrey,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: myLocations.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ListTile(
                                onTap: () {
                                  setState(() {
                                    locationId =
                                        myLocations[index].currentAddress.id;
                                    defColor = Colors.green;
                                    selection = const Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    );
                                  });
                                },
                                title: Text(
                                  myLocations[index].currentAddress.identifier,
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w800),
                                ),
                                leading: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: defColor,
                                    ),
                                  ),
                                  child: _buildOnTapSelectionFunc(
                                      myLocations[index].currentAddress.id,
                                      locationId),
                                )),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          onPressed: () async {
                            locator
                                .get<ApploanstatusUpdateRepo>()
                                .UpdatingStatustoAIwithLocationAddressID(
                                    widget.id, locationId)
                                .then((value) {
                              if (value) {
                                setState(() {
                                  _currentStep += 1;
                                });
                              }
                            });
                          },
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text('Additional Information'),
                content: Column(
                  children: <Widget>[
                    const Text(
                      'GENDER',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueGrey,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    Wrap(
                      spacing: 26,
                      children: [
                        for (var record in StaticData.genders)
                          ChoiceChip(
                            backgroundColor: Colors.white,
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
                    const Text(
                      'MARITAL STATUS',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueGrey,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    Wrap(
                      spacing: 26,
                      children: [
                        for (var record in StaticData.maritalStatus)
                          ChoiceChip(
                            backgroundColor: Colors.white,
                            selectedColor:
                                Theme.of(context).colorScheme.secondary,
                            label: Text(record.title),
                            selected: record.id == _selectedmaritalstatus,
                            padding: const EdgeInsets.all(2),
                            labelStyle: const TextStyle(fontSize: 14),
                            onSelected: (selected) {
                              if (selected) {
                                _selectedmaritalstatus = record.id;
                              } else {
                                _selectedmaritalstatus = null;
                              }
                              setState(() {});
                            },
                          ),
                      ],
                    ),
                    const Text(
                      'OCCUPATION TYPE',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueGrey,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                              isDense: true,
                              hint: const Text("Occupation Type"),
                              value: _selectedoccupation,
                              items:
                                  StaticData.occupationTypes.map((occupations) {
                                return DropdownMenuItem(
                                    value: occupations.id,
                                    child: Text(occupations.title));
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedoccupation = value as String?;
                                });
                              }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'RESIDENCY TYPE',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueGrey,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                              isDense: true,
                              hint: const Text("Residency Type"),
                              value: _selectedresidency,
                              items:
                                  StaticData.residenceTypes.map((occupations) {
                                return DropdownMenuItem(
                                    value: occupations.id,
                                    child: Text(occupations.title));
                              }).toList(),
                              onChanged: (value) {
                                // snapshot.data.where((element) => element.emiduedate);
                                setState(() {
                                  _selectedresidency = value as String?;
                                });
                              }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: TextFormField(
                        controller: mobileController,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: TextFormField(
                        controller: fatharNameController,
                        decoration: InputDecoration(
                          hintText: "FATHER NAME",
                          labelText: 'Father Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: TextFormField(
                        controller: motherNameController,
                        decoration: InputDecoration(
                          hintText: "MOTHER NAME",
                          labelText: 'Mother Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: TextFormField(
                        controller: employerNameController,
                        decoration: InputDecoration(
                          hintText: "Employer Name",
                          labelText: 'EMPLOYER NAME',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: TextFormField(
                        controller: officemobileController,
                        decoration: InputDecoration(
                          hintText: "Office Phone Number",
                          labelText: 'OFFICE PHONE NUMBER',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: TextFormField(
                        controller: officeemailController,
                        decoration: InputDecoration(
                          hintText: "Official Email Id",
                          labelText: 'OFFICIAL EMAIL ID',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: TextFormField(
                        controller: personalemailController,
                        decoration: InputDecoration(
                          hintText: "Designation",
                          labelText: 'DESIGNATION',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: TextFormField(
                        controller: AnnualIncomeController,
                        decoration: InputDecoration(
                          hintText: "Annual Income",
                          labelText: 'ANNUAL INCOME',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () async {
                            locator
                                .get<AdditionalInfRepo>()
                                .UpdatingSttatusoBDandAdditionaldatailsofUser(
                                    widget.id,
                                    _selectedgender,
                                    _selectedmaritalstatus,
                                    _selectedoccupation,
                                    _selectedresidency,
                                    widget.mobilenumber,
                                    AltermobileController.text,
                                    fatharNameController.text,
                                    employerNameController.text,
                                    officemobileController.text,
                                    officeemailController.text,
                                    designationController.text,
                                    100000,
                                    personalemailController.text)
                                .then((value) {
                              if (value) {
                                setState(() {
                                  _currentStep += 1;
                                });
                              }
                            });
                          },
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text('Bank Details'),
                content: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                            // child tapped will fire onTap
                            child: Center(
                          child: RichText(
                            text: TextSpan(children: [
                              const TextSpan(
                                  style: TextStyle(color: Colors.grey)),
                              WidgetSpan(
                                  child: GestureDetector(
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    Text(
                                      'ADD BANK ACCOUNT',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddingBANKdetails(id: widget.id)),
                                  );
                                },
                              ))
                            ]),
                          ),
                        )),
                      ),
                    )
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text('eSign & eMandate'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("E-SIGN",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.justify),
                    const Text(
                        "To proceed further to disburse the loan\n customer has to sign the application\n document"),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.schedule),
                          highlightColor: Colors.orange,
                          color: Colors.orangeAccent,
                          onPressed: () {},
                        ),
                        const Text(
                          "eSign link send successfully.\n Waiting for eSign completion.",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(Icons.share),
                          highlightColor: Colors.greenAccent,
                          color: Colors.greenAccent,
                          onPressed: () {
                            // Share.share(
                            //     'check out my website https://protocoderspoint.com/',
                            //     subject: 'Sharing on Email');
                          },
                        ),
                      ],
                    ),
                    Container(
                        child: Center(
                      child: RaisedButton(
                          color: Colors.white,
                          padding: const EdgeInsets.all(2),
                          onPressed: () => launch(
                              'https://app.digio.in/#/gateway/login/DID220521143245788K3KW2LEPQHTI2M/8688662378/8688662378'),
                          child: const Text(
                            "click here",
                            style: TextStyle(color: Colors.lightBlueAccent),
                          )),
                    )),
                    Container(
                      width: 340,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.black87,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          onPressed: () async {},
                          child: const Text(
                            'RESEND LINK',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 340,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: RaisedButton(
                          elevation: 0.0,
                          color: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          onPressed: () async {},
                          child: const Text(
                            'CHECK STATUS',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: const Text('Final Approval/Disburse'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 400,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Waiting for call verification',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "10000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "AMOUNT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('EMI',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            ),
                            const Text(
                              ' ',
                              textDirection: TextDirection.ltr,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.black87,
                                  fontSize: 13.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchStepsType,
        child: const Icon(Icons.list),
      ),
    );
  }

  ///For Radio button
  _buildOnTapSelectionFunc(String id, String? locationId) {
    if (locationId != null) {
      if (id.toLowerCase().trim() == locationId.toLowerCase().trim()) {
        return selection;
      }
    }
  }

  /// For OTP TextField
  Widget textSection(TextEditingController controller) {
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

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 3 ? setState(() => _currentStep += 2) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
