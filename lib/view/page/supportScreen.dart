import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/supportScreenComp.dart/opinionTextFormField.dart';
import 'package:secday/view/component/supportScreenComp.dart/submitButton.dart';
import 'package:secday/view/component/supportScreenComp.dart/textFormField.dart';
import 'package:secday/view_model/support_cubit/cubit/support_cubit.dart';

class SupportPage extends StatelessWidget {
   SupportPage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit sc = SupportCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              centerTitle: true,
              title: Text(
                "Support",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  getSupTextFormField("Name", true),
                  getSupTextFormField("E-mail", false),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: getOpinionTextFormField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                    child: Center(
                      child: getSubmitButton(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
