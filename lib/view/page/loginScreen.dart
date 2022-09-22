import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/auth/horizontalDivider.dart';
import 'package:secday/view/component/auth/loginComponents/LoginTextButton.dart';
import 'package:secday/view/component/auth/AuthTitle.dart';
import 'package:secday/view/page/signUpScreen.dart';
import 'package:secday/view_model/Login_cubit/cubit/login_cubit.dart';

import '../component/MainTitle_comp.dart';
import '../component/auth/textFormFieldAuth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit lgcubit = LoginCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MainTitle(),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: getAuthTitle("Login"),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "E-mail",
                          isPassword: false,
                          controllerValue: lgcubit.email_controller),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: getTextFormFieldAuth(
                            label: "Password",
                            isPassword: true,
                            controllerValue: lgcubit.password_controller)),
                    getTextButton(),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, bottom: 20),
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Login"),
                          onPressed: () {
                            lgcubit.login(context);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fixedSize: Size(350, 50)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: getHorizontalDivider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Sign Up"),
                          onPressed: () {
                            lgcubit.pressedSignIn();

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fixedSize: Size(350, 50)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
