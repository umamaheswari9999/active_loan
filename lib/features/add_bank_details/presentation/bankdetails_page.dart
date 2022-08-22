import 'package:flutter/material.dart';
import '../../../utils/context_utils.dart';
import '../../../di/injection.dart';
import '../../../widgets/text_fields/textinputs_page.dart';
import '../../kycVerificationndDetails/domain/staticData.dart';
import '../domain/bankDetailsclass.dart';
import '../domain/existingAccountDetailsclass/existingDetails_page.dart';
import '../repo/bank_details/bankdetails_repo.dart';
class AddingBANKdetails extends StatefulWidget {
  final String id;
  const AddingBANKdetails({Key? key, required this.id}) : super(key: key);
  @override
  _AddingBANKdetailsState createState() => _AddingBANKdetailsState();
}class _AddingBANKdetailsState extends State<AddingBANKdetails> {
  List<bankexistingDetails> listofDetails = [];
  TextEditingController BankController = TextEditingController();
  TextEditingController AccountnumberController = TextEditingController();
  TextEditingController AccounttypeController = TextEditingController();
  TextEditingController IfscCodeController = TextEditingController();
  TextEditingController MICRNumberController = TextEditingController();
  TextEditingController BranchController = TextEditingController();
  bool isExist = false;
  String? _selectedbank;
  String? _selectedaccounttype;
  List banknamesId = [];
  List<BankNameDetails> Banknamesdetails=[];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      locator.get<BankRepo>().BanknamenamesApi().then((value) {
        Banknamesdetails = value;
        setState(() {

        });
      });
    });
    _selectedaccounttype=StaticData.accountTypes[1].title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus( FocusNode());
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.arrow_back_outlined),
                            highlightColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          const Text(
                            'Add Bank details',
                            style: TextStyle(
                              fontFamily: 'Cardo',
                              fontSize: 35,
                              color: Color(0xff0C2551),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyCustomInputBox(
                      onChanged: (text) {
                        IfscCodeController.text = text.toUpperCase();
                        final val = TextSelection.collapsed(
                            offset: IfscCodeController.text.length);
                        IfscCodeController.selection = val;
                        setState(() {});
                        if (text.length == 11) {
                             locator.get<BankRepo>().fetchBankDetailsfetchingifsc(
                               IfscCodeController.text)
                              .then((value) {
                            if (value != null) {
                              setState(() {
                                BranchController.text = value.inpbankbranch!;
                                MICRNumberController.text = value.inpmicr!;
                                _selectedbank=Banknamesdetails.where((element) => element.id==value.inpbanknameId).first.id;});
                            } else {
                              BranchController.text = '';
                              MICRNumberController.text = '';
                            }
                          });
                        } else {
                          BranchController.text = '';
                          MICRNumberController.text = '';
                        }
                      },

                      inputHint: 'IFSC CODE',
                      inputFieldController: IfscCodeController,
                    ),
                    MyCustomInputBox(
                      onChanged: (text) {
                        final val = TextSelection.collapsed(
                            offset: AccountnumberController.text.length);
                        AccountnumberController.selection = val;
                        setState(() {});
                      },

                      inputHint: 'Account Number',
                      inputFieldController: AccountnumberController,
                    ),

                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                              isDense: true,
                              hint: const Text("Account Type"),
                              value: _selectedaccounttype,
                              items: StaticData.accountTypes.map((occupations) {
                                return DropdownMenuItem(
                                    value: occupations.id,
                                    child: Text(occupations.title));
                              }).toList(),
                              onChanged: (value) {
                                // snapshot.data.where((element) => element.emiduedate);
                                setState(() {
                                  _selectedaccounttype = value as String;
                                });}),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyCustomInputBox(
                      inputHint: 'Branch Name',
                      inputFieldController: BranchController, onChanged: (String ) {  },
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            isExpanded: true,
                              isDense: true,
                              hint: const Text("BANK NAME"),
                              value: _selectedbank,
                              items: Banknamesdetails.map((bank) {
                                return DropdownMenuItem<String>(
                                    value: bank.id,
                                    child: Text(
                                      bank.name!,
                                    ));
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedbank = value;});
                              }),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyCustomInputBox(
                      inputHint: 'Micr Code',
                      inputFieldController: MICRNumberController, onChanged: (String ) {  },
                    ),
                    //
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
                          locator.get<BankRepo>().Updatingbankdetailsfornewaccountdetails( widget.id,_selectedbank,
                              AccountnumberController.text,IfscCodeController.text,BranchController.text,
                              MICRNumberController.text).then((value) {
                            if(value==false){
                              showErrorDialog("Please Enter Correct Details",context);
                            }
                            else{

                            }
                          });
                        },
                        child: const Text(
                          'ADD BANK ACCOUNT',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
