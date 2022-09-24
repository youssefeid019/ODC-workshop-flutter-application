import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:secday/view_model/FAQ_cubit/cubit/faq_cubit.dart';

Widget getAnimatedContainer(FaqCubit faqcub) {
  return AnimatedContainer(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      width: faqcub.containerWidth,
      height: faqcub.containerHeight,
      //color: Colors.blueGrey,
      duration: Duration(milliseconds: 500),
      child: Html(data: faqcub.answer));
}
