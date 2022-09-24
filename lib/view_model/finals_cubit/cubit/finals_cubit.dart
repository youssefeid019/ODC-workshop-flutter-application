import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/final_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context) => BlocProvider.of(context);
  FinalsModel? finalmodel;
  void getFinalsData() async {
    final prefs = await SharedPreferences.getInstance();
    await DioHelper.getData(
            url: examsEndPoint,
            token:
                prefs.getString('accessToken'))
        .then((value) {
      finalmodel = FinalsModel.fromJson(value.data);
      emit(FinalsRetrived());
    }).catchError((e) {
      print("loool");
    });
  }
}
