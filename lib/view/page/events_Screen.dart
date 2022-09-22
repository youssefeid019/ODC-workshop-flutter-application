import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secday/view/component/eventsScreen_comp/custom_calendar.dart';
import 'package:secday/view/component/eventsScreen_comp/title.dart';
import 'package:secday/view_model/Events_cubit/cubit/events_cubit.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventsCubit(),
      child: BlocConsumer<EventsCubit, EventsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          EventsCubit ec = EventsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              backgroundColor: Colors.white,
              title: getTitle(),
              centerTitle: true,
            ),
            body: SafeArea(child: getCalendar()),
          );
        },
      ),
    );
  }
}
