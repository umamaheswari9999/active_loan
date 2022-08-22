import 'package:flutter/material.dart';

class LoanFiltersDrawer extends StatelessWidget {
  const LoanFiltersDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Text('FROM DATE'),
            InkWell(
              onTap: () {
                // showDatePicker(
                //   context: context,
                //   initialDate: DateTime.now().subtract(const Duration(days: 30)),
                //   firstDate: DateTime.now().subtract(const Duration(days: 30)),
                //   lastDate: DateTime.now(),
                // );
                //

                showDateRangePicker(
                    context: context,
                    firstDate:
                        DateTime.now().subtract(const Duration(days: 30)),
                    lastDate: DateTime.now(),
                    initialDateRange: DateTimeRange(
                      start: DateTime.now().subtract(const Duration(days: 30)),
                      end: DateTime.now(),
                    )).then((value) {
                  if (value != null) {
                    print(value.start);
                    print(value.end);
                  }
                });
              },
              child: TextField(
                decoration: InputDecoration(
                  hintText: '',
                  enabled: false,
                ),
              ),
            ),
            Text('TO DATE'),
            TextField(
              decoration: InputDecoration(hintText: ''),
            ),
          ],
        ),
      ),
    );
  }
}
