import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/presentation/bloc/daily_update/daily_update_bloc.dart';
import '../../../../../../../core/strings/constants.dart';
import '../../../../bloc/filter_episode/filterepisode_bloc.dart';

import '../../reading/reading_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class DailyUpdateScreen extends StatefulWidget {
  const DailyUpdateScreen({Key? key}) : super(key: key);

  @override
  _DailyUpdateScreenState createState() => _DailyUpdateScreenState();
}

class _DailyUpdateScreenState extends State<DailyUpdateScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(fontSize: 18),
                    weekendStyle: TextStyle(fontSize: 18)),
                daysOfWeekHeight: 80,
                pageJumpingEnabled: true,
                rowHeight: 65,
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                  String date = DateFormat.yMMMEd().format(_selectedDay!);
                  String dateComma = date.replaceAll(",", "");

                  BlocProvider.of<FilterepisodeBloc>(context)
                      .add(FilterEpisode(dateComma));
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
              const SizedBox(height: 50),
              BlocBuilder<FilterepisodeBloc, FilterepisodeState>(
                builder: (context, state) {
                  if (state is FilterepisodeInitial) {
                    return Center(
                      child: Column(
                        children: const [
                          Icon(Ionicons.time),
                          Text("Please Selects a date"),
                        ],
                      ),
                    );
                  }

                  if (state is FilteredEpisodesLoaded) {
                    if (state.filterEpisodes.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Ionicons.information_circle_outline),
                            Text("No comics with Your selected Date"),
                          ],
                        ),
                      );
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: state.filterEpisodes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(state.filterEpisodes[index].title),
                          subtitle:
                              Text(state.filterEpisodes[index].episodeName),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ReadingScreen(
                                    episodes: state.filterEpisodes[index])));
                          },
                          leading: Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(state
                                        .filterEpisodes[index].coverPhoto))),
                          ),
                        );
                      },
                    );
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
