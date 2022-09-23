import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/core/appBarWithFilter.dart';
import 'package:secday/view/component/core/loading_indecator.dart';
import 'package:secday/view/component/settingsComponents/appBarText.dart';
import 'package:secday/view_model/finals_cubit/cubit/finals_cubit.dart';

import '../component/core/cardComponent.dart';

class FinalsPage extends StatelessWidget {
  FinalsPage({Key? key}) : super(key: key);

  List<Widget> views = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => FinalsCubit()..getFinalsData(),
      child: BlocConsumer<FinalsCubit, FinalsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FinalsCubit fc = FinalsCubit.get(context);
          return Scaffold(
            appBar: getAppBarWithFilter("Finals", context),
            body: fc.finalmodel == null
                ? getLoadingIndecator()
                : ListView.builder(
                    itemCount: fc.finalmodel!.data!.length,
                    itemBuilder: (context, index) {
                      if (fc.finalmodel!.data![index].finaal == true) {
                        return getCard(
                            fc.finalmodel!.data![index].examSubject.toString(),
                            fc.finalmodel!.data![index].examDate.toString(),
                            fc.finalmodel!.data![index].examStartTime
                                .toString(),
                            fc.finalmodel!.data![index].examEndTime.toString());
                      } else {
                        return Padding(padding: EdgeInsets.all(0));
                      }
                    },
                  ),
          );
        },
      ),
    );
  }
}
