
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/model/signup_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

import '../../../view/page/loginScreen.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);
  TextEditingController password_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController name_controller = new TextEditingController();
  TextEditingController phone_num_controller = new TextEditingController();
  TextEditingController re_password_controller = new TextEditingController();
  String chosenUniversity = "";
  String chosenGender = "";
  String chosenGrade = "";
  String message = "";
  signUpModel? signModel;
  void signUp(BuildContext context) async {
    await DioHelper.postData(url: registerEndPoint, data: {
      'email': email_controller.text.toString(),
      'password': password_controller.text.toString(),
      'name': name_controller.text.toString(),
      'gender': "f",
      'phoneNumber': phone_num_controller.text.toString(),
      'universityId': 1,
      'gradeId': 4,
      'roleId': 4
    }).then((value) {
      signModel = signUpModel.fromJson(value.data);
      print(signModel!.data!.email);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      const snackBar = SnackBar(
        content: Text('signed In'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      emit(Success());
    }).catchError((e) {
      print("Failed");
      const snackBar = SnackBar(
        content: Text('Email Taken!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      emit(FailSignUp());
    });
  }

  void pressedLogin() {
    emit(FailSignUp());
  }
}
