import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/midTerms_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
  static MidtermsCubit get(context) => BlocProvider.of(context);
  MidtermsModel? midModel;
  void getMidTerms() async {
    final prefs = await SharedPreferences.getInstance();
    await DioHelper.getData(
            url: examsEndPoint, token: prefs.getString('accessToken'))
        .then((value) {
      midModel = MidtermsModel.fromJson(value.data);
      emit(MidtermsRetrieved());
    }).catchError((e) {
      print("loool");
    });
  }
}
