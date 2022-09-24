import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/sections_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context) => BlocProvider.of(context);
  sectionsModel? secModel;
  void getData() async {
    final prefs = await SharedPreferences.getInstance();
    await DioHelper.getData(
            url: sectionEndPoint, token: prefs.getString('accessToken'))
        .then((value) {
      secModel = sectionsModel.fromJson(value.data);
      //print(secModel!.data![0].sectionSubject);
      emit(Done());
    });
  }
}
