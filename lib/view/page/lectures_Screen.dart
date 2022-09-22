import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view_model/lectures_cubit/cubit/lectures_cubit.dart';

import '../component/appBarWithFilter.dart';
import '../component/cardComponent.dart';
import '../component/loading_indecator.dart';

class LecturesPage extends StatelessWidget {
  LecturesPage({Key? key}) : super(key: key);

  

  List<Widget> views = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => LecturesCubit()..getLectures(),
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LecturesCubit lc = LecturesCubit.get(context);
          return Scaffold(
            appBar: getAppBarWithFilter("Lectures",context),
            body:lc.lecModel == null
                ?getLoadingIndecator()
                : ListView.builder(
                    itemCount: lc.lecModel!.data!.length,
                    itemBuilder: (context, index) {
                      return getCard(
                          lc.lecModel!.data![index].lectureSubject.toString(),
                          lc.lecModel!.data![index].lectureDate.toString(),
                          lc.lecModel!.data![index].lectureStartTime.toString(),
                          lc.lecModel!.data![index].lectureEndTime.toString());
                    },
                  ),
          );
        },
      ),
    );
  }
}
