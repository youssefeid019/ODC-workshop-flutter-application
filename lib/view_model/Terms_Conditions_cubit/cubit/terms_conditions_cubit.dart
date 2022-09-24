import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/Terms_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

part 'terms_conditions_state.dart';

class TermsConditionsCubit extends Cubit<TermsConditionsState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());
  static TermsConditionsCubit get(context) => BlocProvider.of(context);
  TermsModel? termModel;
  String Terms = "";
  void GetTerms() async {
    await DioHelper.getData(url: termsEndPoint).then((value) {
      termModel = TermsModel.fromJson(value.data);
      Terms = termModel!.data!.terms.toString();
      emit(TermsLoaded());
    }).catchError((e) {
      print("Error");
    });
  }
}
