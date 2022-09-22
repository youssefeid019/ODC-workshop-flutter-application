import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/MainTitle_comp.dart';
import 'package:secday/view/component/auth/AuthTitle.dart';
import 'package:secday/view/component/auth/horizontalDivider.dart';
import 'package:secday/view/component/auth/signUp_comp/dropDownButtonFormFieldComp.dart';
import 'package:secday/view/component/auth/signUp_comp/textComp.dart';
import 'package:secday/view/component/auth/textFormFieldAuth.dart';
import 'package:secday/view/page/loginScreen.dart';
import 'package:secday/view_model/signUp_cubit/cubit/sign_up_cubit.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  List<DropdownMenuItem<String>> genderList = [
    DropdownMenuItem(
      child: Text("Male"),
      value: "Male",
    ),
    DropdownMenuItem(
      child: Text("Female"),
      value: "Female",
    ),
  ];

  List<DropdownMenuItem<String>> UniversityList = [
    DropdownMenuItem(
      child: Text("Ain Shams"),
      value: "Ain Shams",
    ),
    DropdownMenuItem(
      child: Text("Helwan"),
      value: "Helwan",
    ),
  ];

  List<DropdownMenuItem<String>> gradeList = [
    DropdownMenuItem(
      child: Text("A"),
      value: "A",
    ),
    DropdownMenuItem(
      child: Text("B"),
      value: "B",
    ),
    DropdownMenuItem(
      child: Text("C"),
      value: "C",
    ),
    DropdownMenuItem(
      child: Text("D"),
      value: "D",
    ),
    DropdownMenuItem(
      child: Text("F"),
      value: "F",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignUpCubit Sc = SignUpCubit.get(context);
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
                      child: getAuthTitle("Sign Up"),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "Name",
                          isPassword: false,
                          controllerValue: Sc.name_controller),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "E-mail",
                          isPassword: false,
                          controllerValue: Sc.email_controller),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "Phone Number",
                          isPassword: false,
                          controllerValue: Sc.phone_num_controller),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "Password",
                          isPassword: true,
                          controllerValue: Sc.password_controller),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 20, top: 20),
                      child: getTextFormFieldAuth(
                          label: "Renter password",
                          isPassword: true,
                          controllerValue: Sc.re_password_controller),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GetText("Gender"),
                          GetText("University"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 150,
                            height: 80,
                            child: getDropDown(
                                genderList, "Male", Sc.chosenGender)),
                        Container(
                          width: 150,
                          height: 80,
                          child: getDropDown(
                              UniversityList, "Ain Shams", Sc.chosenUniversity),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(child: Text("Grade")),
                    Center(
                      child: Container(
                        width: 150,
                        child: getDropDown(gradeList, "A", Sc.chosenGrade),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Sign Up"),
                          onPressed: () {
                            if (Sc.message == "s") {
                              Sc.message = "";
                             
                            } else if (Sc.message == "f") {
                              Sc.message = "";
                             
                            }
                            Sc.signUp(context);
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
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Login"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                            Sc.pressedLogin();
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
