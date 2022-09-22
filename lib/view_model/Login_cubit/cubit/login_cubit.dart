import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/model/login_model.dart';
import 'package:secday/view_model/dataBase/network/dio_helper.dart';
import 'package:secday/view_model/dataBase/network/end_points.dart';

import '../../../view/page/home_nav_screen.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  login_Model? lgModel;
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  void login(BuildContext context) async {
    print(email_controller.text.toString());
    await DioHelper.postData(url: loginEndPoint, data: {
      'email': email_controller.text.toString(),
      'password': password_controller.text.toString(),
    }).then((value) {
      print("success");
      lgModel = login_Model.fromJson(value.data);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeNav()),
      );
      const snackBar = SnackBar(
        content: Text('logged in'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      emit(LogedIn());
    }).catchError((e) {
      print("Fail");
      const snackBar = SnackBar(
        content: Text('Login Failed!'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      emit(fail());
    });
  }

  void pressedSignIn() {
    emit(fail());
  }
}
