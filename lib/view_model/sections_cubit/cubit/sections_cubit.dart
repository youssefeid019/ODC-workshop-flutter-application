import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/sections_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context) => BlocProvider.of(context);
  sectionsModel? secModel;
  void getData() async {
    await DioHelper.getData(url: sectionEndPoint,token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjI5NjQsImV4cCI6MTc1MDE2Mjk2NH0.RpPLISsQWkv3ntSk0DqMGa5bs7GizmXGnmHi1LsqekU").then((value) {
      secModel = sectionsModel.fromJson(value.data);
      //print(secModel!.data![0].sectionSubject);
      emit(Done());
    });
  }
}
