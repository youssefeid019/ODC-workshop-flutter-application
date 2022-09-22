import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:secday/view/component/newsScreenComp/newsTitleText.dart';
import 'package:secday/view/component/newsScreenComp/news_Stack.dart';
import 'package:secday/view_model/news_Cubit/cubit/news_cubit.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

 

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit nc = NewsCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: getNewsTitleText(),
                    ),
                    getNewsStack(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
