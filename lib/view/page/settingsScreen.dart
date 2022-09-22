import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view_model/settings_cubit/cubit/settings_cubit.dart';

import '../component/settingsComponents/appBarText.dart';
import '../component/settingsComponents/settingsListTile.dart';

class settings extends StatelessWidget {
  settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit sc = SettingsCubit.get(context);
          return Scaffold(
              appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: getAppBarText()),
              body: Column(
                children: [
                  getSettingsListTile("FAQ",context),
                  getSettingsListTile("Terms & Conditions",context),
                  getSettingsListTile("Our Partners",context),
                  getSettingsListTile("Support",context),
                  getSettingsListTile("Log Out",context),
                ],
              ));
        },
      ),
    );
  }
}
