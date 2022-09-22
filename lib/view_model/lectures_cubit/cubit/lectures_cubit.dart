import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/lectures_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';
import 'package:secday/view_model/sections_cubit/cubit/sections_cubit.dart';

part 'lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());
  static LecturesCubit get(context) => BlocProvider.of(context);
  lecturesModel? lecModel;
  void getLectures() async {
    await DioHelper.getData(
            url: lectureEndPoint,
            token:
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjI5NjQsImV4cCI6MTc1MDE2Mjk2NH0.RpPLISsQWkv3ntSk0DqMGa5bs7GizmXGnmHi1LsqekU")
        .then((value) {
      lecModel = lecturesModel.fromJson(value.data);
      emit(LecDone());
    });
  }
}
