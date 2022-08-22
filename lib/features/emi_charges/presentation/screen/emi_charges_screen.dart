import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:active_loan/features/emi_charges/presentation/bloc/emi_charges_bloc.dart';
import 'package:active_loan/features/emi_charges/presentation/bloc/other_charges_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../../razor_pay/presentation/screen.dart';
import '../../domain/entity/emi_charges.dart';

class ChargesPage extends StatefulWidget {
  const ChargesPage({
    Key? key,
  }) : super(key: key);
  @override
  _ChargesPageState createState() => _ChargesPageState();
}

class _ChargesPageState extends State<ChargesPage> {
  String? _selected;
  double emiAmount = 0;
  double emidueAmount = 0;
  List emidueSelectedIds = [];
  List inoiceselected = [];
  List<String> invoiceSelectedIds = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(38, 81, 158, 1.0),
        title: const Text('Overdue Payment'),
        actions: const <Widget>[],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BlocBuilder<EmiChargesBloc, EmiChargesState>(
          builder: (context, state) {
            return state.when(
                initial: () =>
                    Center(child: const CupertinoActivityIndicator()),
                loading: () =>
                    Center(child: const CupertinoActivityIndicator()),
                success: (data) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(12),
                            child: const Text(
                              'EMI\'s Overdue',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            )),

                        ///------------------------Dropdown section for displaying emi dates--------------------------------///
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: DropdownButton(
                                  isDense: true,
                                  hint: const Text("Select month"),
                                  value: _selected,
                                  items: data.map((loans) {
                                    return DropdownMenuItem<String>(
                                        value: loans.id,
                                        child: Text(
                                          DateFormat("Up to MMM d,yyyy")
                                              .format(DateTime.parse(
                                            loans.emiduedate,
                                          )),
                                        ));
                                  }).toList(),
                                  onChanged: (String? id) {
                                    setState(() {
                                      _selected = id;
                                      emiAmount = 0;
                                      emidueSelectedIds = [];
                                      int index = data.indexWhere(
                                          (element) => element.id == id);
                                      for (int i = 0; i <= index; i++) {
                                        emiAmount =
                                            emiAmount + data[i].outstandingamnt;
                                        emidueSelectedIds.add(data[i].id);
                                      }
                                    });
                                  }),
                            ),
                          ),
                        ),

                        ///------------------------Amount display---------------------------------------------------------///
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    const TextSpan(text: 'EMI Amount:'),
                                    TextSpan(
                                        text: '   ₹ $emiAmount',
                                        style: const TextStyle(
                                            color: Colors.blueGrey)),
                                  ],
                                ),
                              ),
                            )),
                      ]);
                },
                failure: (f) => Text(f.toString()));
          },
        ),
        Expanded(
          child: ListView(
            children: [
              BlocBuilder<OtherChargesBloc, OtherChargesState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => const CupertinoActivityIndicator(),
                      loading: () => const CupertinoActivityIndicator(),
                      success: (data) {
                        return Table(
                          columnWidths: const {
                            0: FlexColumnWidth(1.0),
                            1: FlexColumnWidth(2.0),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              decoration:
                                  const BoxDecoration(color: Colors.blueGrey),
                              children: [
                                TableCell(
                                  child: SizedBox(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Text(''),
                                        Text('Date'),
                                        Text('Amount'),
                                        Text('Type'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            for (var record in data)
                              TableRow(
                                children: [
                                  TableCell(
                                    child: SizedBox(
                                      height: 40,
                                      child: SizedBox(
                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Checkbox(
                                                checkColor: Colors.white,
                                                activeColor: Colors.blueGrey,
                                                value: invoiceSelectedIds
                                                    .contains(record.id),
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    if (value == true) {
                                                      inoiceselected.add(record
                                                          .outstandingAmount);
                                                      invoiceSelectedIds
                                                          .add(record.id);
                                                      emidueAmount = emidueAmount +
                                                          record
                                                              .outstandingAmount;
                                                    } else {
                                                      inoiceselected.remove(record
                                                          .outstandingAmount);
                                                      invoiceSelectedIds
                                                          .remove(record.id);
                                                      emidueAmount = emidueAmount -
                                                          record
                                                              .outstandingAmount;
                                                    }
                                                  });
                                                }),
                                            Text(
                                              DateFormat(" MMM d,yyyy")
                                                  .format(DateTime.parse(
                                                record.invoiceDate,
                                              )),
                                            ),
                                            Text('${record.outstandingAmount}'),
                                            const Flexible(
                                              child: Text("Late Payment",
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ],
                        );
                      },
                      failure: (f) => Text(f.toString()));
                },
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'Total Amount :'),
                    // if(_selected!=null)
                    TextSpan(
                        text: (emidueAmount + emiAmount).toStringAsFixed(2),
                        style: const TextStyle(color: Colors.lightBlueAccent)),
                    //${snapshot.data[index].dateofloansanction}
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          child: SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.lightBlueAccent,
              child: const Text(
                "Pay",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => payRazor(totalAmount: emidueAmount+emiAmount)));
              },
            ),
          ),
        )
      ]),
    );
  }
}
