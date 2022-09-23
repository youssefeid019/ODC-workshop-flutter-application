import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secday/view/component/core/MainTitle_comp.dart';
import 'package:secday/view/component/home_Screen_Comp/Home_Card.dart';
import 'package:secday/view/page/Finals_Screen.dart';
import 'package:secday/view/page/MidTerms_Screen.dart';
import 'package:secday/view/page/Notes_Screen.dart';
import 'package:secday/view/page/events_Screen.dart';
import 'package:secday/view/page/lectures_Screen.dart';
import 'package:secday/view/page/sectionsScreen.dart';
import 'package:secday/view_model/home_cubit/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeCubit hc = HomeCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Column(children: [
                MainTitle(),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LecturesPage()),
                            );
                          },
                          child: getHomeCard(
                              "assets/icons/lecture.svg", "Lectures"),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SectionsPage()),
                            );
                          },
                          child: getHomeCard(
                              "assets/icons/sections.svg", "Sections"),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MidTermPage()),
                            );
                          },
                          child: getHomeCard(
                              "assets/icons/midterm.svg", "Midterms")),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FinalsPage()),
                            );
                          },
                          child:
                              getHomeCard("assets/icons/final.svg", "Finals"))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventsPage()),
                            );
                          },
                          child:
                              getHomeCard("assets/icons/event.svg", "Events")),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotesPage()),
                            );
                          },
                          child: getHomeCard("assets/icons/notes.svg", "Notes"))
                    ],
                  ),
                )
              ]),
            ),
           // bottomNavigationBar: GetNavBar(),
          );
        },
      ),
    );
  }
}
