import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/FAQ_Screen_Comp/FAQ_AppBar.dart';
import 'package:secday/view_model/FAQ_cubit/cubit/faq_cubit.dart';
import 'package:flutter_html/flutter_html.dart';

class FAQ_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => FaqCubit()..GetFAQ(),
      child: BlocConsumer<FaqCubit, FaqState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          FaqCubit faqcub = FaqCubit.get(context);
          return Scaffold(
            appBar: FAQ_App_Bar(context),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Column(
                  children: [
                    Container(
                      width: 390,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      //color: Colors.orange,
                      child: Row(
                        children: [
                          Flexible(
                              child: Html(
                                  data: faqcub.question, shrinkWrap: true)),
                          IconButton(
                            icon: Icon(Icons.expand_less),
                            onPressed: () {
                              faqcub.AnimateContainer();
                            },
                          ),
                        ],
                      ),
                    ),
                    AnimatedContainer(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        width: faqcub.containerWidth,
                        height: faqcub.containerHeight,
                        //color: Colors.blueGrey,
                        duration: Duration(milliseconds:500 ),
                        child: Html(data: faqcub.answer)),
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
