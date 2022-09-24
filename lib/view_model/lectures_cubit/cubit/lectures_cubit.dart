import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/lectures_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';
import 'package:secday/view_model/sections_cubit/cubit/sections_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  
  LecturesCubit() : super(LecturesInitial());
  static LecturesCubit get(context) => BlocProvider.of(context);
  lecturesModel? lecModel;
  void getLectures() async {
    final prefs = await SharedPreferences.getInstance();
    await DioHelper.getData(
            url: lectureEndPoint,
            token:
                prefs.getString('accessToken'))
        .then((value) {
      lecModel = lecturesModel.fromJson(value.data);
      emit(LecDone());
    });
  }
}
