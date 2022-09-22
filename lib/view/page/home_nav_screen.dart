import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:secday/view/page/settingsScreen.dart';
import 'package:secday/view_model/HomeNav_cubit/cubit/home_nav_cubit.dart';

import 'Home_Screen.dart';
import 'newsScreen.dart';

class HomeNav extends StatelessWidget {
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNavCubit(),
      child: BlocConsumer<HomeNavCubit, HomeNavState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeNavCubit hvc = HomeNavCubit.get(context);
          return Scaffold(
            body: Center(
              child: _widgetOptions.elementAt(hvc.selectedindex),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.orange,
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.grey[100]!,
                    color: Colors.orange,
                    tabs: [
                      GButton(
                        icon: LineIcons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: LineIcons.newspaper,
                        text: 'News',
                      ),
                      GButton(
                        icon: Icons.settings,
                        text: 'Settings',
                      ),
                    ],
                    selectedIndex: hvc.selectedindex,
                    onTabChange: (index) {
                      hvc.selectedindex = index;
                      hvc.navigate();
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
