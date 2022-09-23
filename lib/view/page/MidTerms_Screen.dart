import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/core/appBarWithFilter.dart';
import 'package:secday/view/component/settingsComponents/appBarText.dart';
import 'package:secday/view_model/midterms_cubit/cubit/midterms_cubit.dart';

import '../component/core/cardComponent.dart';
import '../component/core/loading_indecator.dart';

class MidTermPage extends StatelessWidget {
  MidTermPage({Key? key}) : super(key: key);

  

  List<Widget> views = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => MidtermsCubit()..getMidTerms(),
      child: BlocConsumer<MidtermsCubit, MidtermsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermsCubit mc = MidtermsCubit.get(context);
          return Scaffold(
            appBar: getAppBarWithFilter("MidTerms",context),
            body: mc.midModel == null
                ? getLoadingIndecator()
                : ListView.builder(
                    itemCount: mc.midModel!.data!.length,
                    itemBuilder: (context, index) {
                      if (mc.midModel!.data![index].finaal == false) {
                        return getCard(
                            mc.midModel!.data![index].examSubject.toString(),
                            mc.midModel!.data![index].examDate.toString(),
                            mc.midModel!.data![index].examStartTime
                                .toString(),
                            mc.midModel!.data![index].examEndTime.toString());
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
