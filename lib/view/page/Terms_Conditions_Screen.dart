import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:secday/view/component/Terms_Conditions_comp/Terms_AppBar.dart';
import 'package:secday/view_model/Terms_Conditions_cubit/cubit/terms_conditions_cubit.dart';

import '../component/core/loading_indecator.dart';

class Terms_Conditions_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => TermsConditionsCubit()..GetTerms(),
      child: BlocConsumer<TermsConditionsCubit, TermsConditionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsConditionsCubit term_cubit = TermsConditionsCubit.get(context);
          return Scaffold(
            appBar: getTermsAppBar(context),
            body: SingleChildScrollView(
              child: term_cubit.termModel == null
                  ? getLoadingIndecator()
                  : Column(children: [
                      Html(data: term_cubit.Terms),
                    ]),
            ),
          );
        },
      ),
    );
  }
}
