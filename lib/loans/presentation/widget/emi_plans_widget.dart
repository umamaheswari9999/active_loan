
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widget/failure_widget.dart';
import '../bloc/emi_plans/emi_plans_cubit.dart';

class EmiPlansWidget extends StatelessWidget {
  const EmiPlansWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmiPlansCubit, EmiPlansState>(
      builder: (ctx, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (data, _) {
            return ListView.separated(
              itemCount: data.length,
              separatorBuilder: (ctx, index) => const Divider(),
              itemBuilder: (ctx, index) => ListTile(
                onTap: () => Navigator.of(context).pop(data[index]),
                title: Text(data[index].name),
              ),
            );
          },
          failure: (f) => FailureWidget(
            failure: f,
            onRefresh: () {
              BlocProvider.of<EmiPlansCubit>(context).fetchInitial();
            },
          ),
        );
      },
    );
  }
}
