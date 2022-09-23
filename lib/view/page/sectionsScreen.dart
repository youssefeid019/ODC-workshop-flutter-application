import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/core/appBarWithFilter.dart';
import 'package:secday/view/component/settingsComponents/appBarText.dart';
import 'package:secday/view_model/sections_cubit/cubit/sections_cubit.dart';

import '../component/core/cardComponent.dart';
import '../component/core/loading_indecator.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({Key? key}) : super(key: key);

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  List<Widget> views = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => SectionsCubit()..getData(),
      child: BlocConsumer<SectionsCubit, SectionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit sc = SectionsCubit.get(context);
          return Scaffold(
            appBar: getAppBarWithFilter("Sections",context),
            body: sc.secModel == null
                ?getLoadingIndecator()
                : ListView.builder(
                    itemCount: sc.secModel!.data!.length,
                    itemBuilder: (context, index) {
                      return getCard(
                          sc.secModel!.data![index].sectionSubject.toString(),
                          sc.secModel!.data![index].sectionDate.toString(),
                          sc.secModel!.data![index].sectionStartTime.toString(),
                          sc.secModel!.data![index].sectionEndTime.toString());
                    },
                  ),
          );
        },
      ),
    );
  }
}
