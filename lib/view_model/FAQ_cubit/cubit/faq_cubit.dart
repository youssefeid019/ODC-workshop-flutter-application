import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:secday/model/FAQ_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
  static FaqCubit get(context) => BlocProvider.of(context);
  String question = "";
  String answer = "";
  double containerWidth = 390;
  double containerHeight = 0;
  FAQ_Model? faqModel;
  void GetFAQ() async {
    await DioHelper.getData(url: faqEndPoint).then((value) {
      faqModel = FAQ_Model.fromJson(value.data);
      question = faqModel!.data![0].question.toString();
      answer = faqModel!.data![0].answer.toString();
      print(question);
      emit(LoadedFAQ());
    }).catchError((e) {
      print(e);
    });
  }

  void AnimateContainer() {
    if (containerHeight != 70) {
     // containerWidth = 390;
      containerHeight = 70;
    } else {
      //containerWidth = 0;
      containerHeight = 0;
    }
    emit(Animate());
  }
}
