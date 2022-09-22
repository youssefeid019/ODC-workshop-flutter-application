import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/final_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context) => BlocProvider.of(context);
  FinalsModel? finalmodel;
  void getFinalsData() async {
    await DioHelper.getData(
            url: examsEndPoint,
            token:
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjM1LCJyb2xlIjo0LCJpYXQiOjE2NjM3NjI5NjQsImV4cCI6MTc1MDE2Mjk2NH0.RpPLISsQWkv3ntSk0DqMGa5bs7GizmXGnmHi1LsqekU")
        .then((value) {
      finalmodel = FinalsModel.fromJson(value.data);
      emit(FinalsRetrived());
    }).catchError((e) {
      print("loool");
    });
  }
}
