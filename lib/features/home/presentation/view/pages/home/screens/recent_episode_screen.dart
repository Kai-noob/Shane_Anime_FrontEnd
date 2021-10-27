// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:date_picker_timeline/date_picker_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movie_app/core/global/image_widget.dart';
// import 'package:movie_app/features/home/presentation/bloc/recent_episode/recent_bloc.dart';
// import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';
// import 'package:table_calendar/table_calendar.dart';

// import '../../../../../../injector.dart';

// class RecentEpisodeScreen extends StatelessWidget {
//   RecentEpisodeScreen({Key? key}) : super(key: key);

//   // final DateTime selectedTime =DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text("Daily Update"),
//         elevation: 0.0,
//       ),
//       body: Column(
//         children: [
//           TableCalendar(
//             startingDayOfWeek: StartingDayOfWeek.monday,
//             headerStyle: HeaderStyle(
//               formatButtonVisible: false,
//               titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
//               leftChevronIcon: Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.white,
//                 size: 15,
//               ),
//               rightChevronIcon: Icon(
//                 Icons.arrow_forward_ios,
//                 color: Colors.white,
//                 size: 15,
//               ),
//               leftChevronMargin: EdgeInsets.only(left: 70),
//               rightChevronMargin: EdgeInsets.only(right: 70),
//             ),
//             calendarStyle: CalendarStyle(),
//             daysOfWeekStyle: DaysOfWeekStyle(
//                 weekendStyle: TextStyle(color: Colors.white),
//                 weekdayStyle: TextStyle(color: Colors.white)),
//             firstDay: DateTime.now(),
//             focusedDay: DateTime.now(),
//             lastDay: DateTime.now(),
//           ),
//           Expanded(child: BlocBuilder<RecentBloc, RecentState>(
//             builder: (context, state) {
//               if (state is FilteredEpisodesLoaded) {
//                 return ListView.builder(
//                   itemCount: state.filterEpisodes.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                               height: 200,
//                               width: MediaQuery.of(context).size.width * 0.45,
//                               child: GestureDetector(
//                                 onTap: () {
//                                   // Navigator.of(context).push(MaterialPageRoute(
//                                   //     builder: (BuildContext context) =>
//                                   //         DetailsScreen(
//                                   //             comicModel:
//                                   //                 state.recentEpisodes[index])));
//                                 },
//                                 child: ImageWidget(
//                                   image: state.filterEpisodes[index].coverPhoto,
//                                 ),
//                               )),
//                           Expanded(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 10.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(state.filterEpisodes[index].title,
//                                       style: const TextStyle(
//                                           overflow: TextOverflow.ellipsis,
//                                           fontSize: 19,
//                                           fontWeight: FontWeight.w800)),
//                                   Text(state.filterEpisodes[index].episodeName,
//                                       style: const TextStyle(
//                                           overflow: TextOverflow.ellipsis,
//                                           fontSize: 19,
//                                           fontWeight: FontWeight.w800)),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               }
//               return Container();
//             },
//           ))
//         ],
//       ),
//     );
//   }
// }

import 'dart:collection';

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/bloc/recent_episode/recent_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/screens/utils.dart';
import 'package:table_calendar/table_calendar.dart';

class TableComplexExample extends StatefulWidget {
  const TableComplexExample({Key? key}) : super(key: key);

  @override
  _TableComplexExampleState createState() => _TableComplexExampleState();
}

class _TableComplexExampleState extends State<TableComplexExample> {
  late final PageController _pageController;
  late final ValueNotifier<List<Event>> _selectedEvents;
  final ValueNotifier<DateTime> _focusedDay = ValueNotifier(DateTime.now());
  final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: getHashCode,
  );
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDays.add(_focusedDay.value);
    _selectedEvents = ValueNotifier(_getEventsForDay(_focusedDay.value));
  }

  @override
  void dispose() {
    _focusedDay.dispose();
    _selectedEvents.dispose();
    super.dispose();
  }

  bool get canClearSelection =>
      _selectedDays.isNotEmpty || _rangeStart != null || _rangeEnd != null;

  List<Event> _getEventsForDay(DateTime day) {
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForDays(Iterable<DateTime> days) {
    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    final days = daysInRange(start, end);
    return _getEventsForDays(days);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (_selectedDays.contains(selectedDay)) {
        _selectedDays.remove(selectedDay);
      } else {
        _selectedDays.add(selectedDay);
      }

      _focusedDay.value = focusedDay;
      _rangeStart = null;
      _rangeEnd = null;
      _rangeSelectionMode = RangeSelectionMode.toggledOff;
    });

    _selectedEvents.value = _getEventsForDays(_selectedDays);
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _focusedDay.value = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _selectedDays.clear();
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableCalendar - Complex'),
      ),
      body: Column(
        children: [
          ValueListenableBuilder<DateTime>(
            valueListenable: _focusedDay,
            builder: (context, value, _) {
              return _CalendarHeader(
                focusedDay: value,
                clearButtonVisible: canClearSelection,
                onTodayButtonTap: () {
                  setState(() => _focusedDay.value = DateTime.now());
                },
                onClearButtonTap: () {
                  setState(() {
                    _rangeStart = null;
                    _rangeEnd = null;
                    _selectedDays.clear();
                    _selectedEvents.value = [];
                  });
                },
                onLeftArrowTap: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                onRightArrowTap: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
              );
            },
          ),
          TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay.value,
            headerVisible: false,
            selectedDayPredicate: (day) => _selectedDays.contains(day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            holidayPredicate: (day) {
              // Every 20th day of the month will be treated as a holiday
              return day.day == 20;
            },
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onCalendarCreated: (controller) => _pageController = controller,
            onPageChanged: (focusedDay) => _focusedDay.value = focusedDay,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() => _calendarFormat = format);
              }
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                        onTap: () => print('${value[index]}'),
                        title: Text('${value[index]}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;
  final VoidCallback onTodayButtonTap;
  final VoidCallback onClearButtonTap;
  final bool clearButtonVisible;

  const _CalendarHeader({
    Key? key,
    required this.focusedDay,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
    required this.onTodayButtonTap,
    required this.onClearButtonTap,
    required this.clearButtonVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerText = DateFormat.yMMM().format(focusedDay);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          SizedBox(
            width: 120.0,
            child: Text(
              headerText,
              style: const TextStyle(fontSize: 26.0),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today, size: 20.0),
            visualDensity: VisualDensity.compact,
            onPressed: onTodayButtonTap,
          ),
          if (clearButtonVisible)
            IconButton(
              icon: const Icon(Icons.clear, size: 20.0),
              visualDensity: VisualDensity.compact,
              onPressed: onClearButtonTap,
            ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: onLeftArrowTap,
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: onRightArrowTap,
          ),
        ],
      ),
    );
  }
}

class TableBasicsExample extends StatefulWidget {
  const TableBasicsExample({Key? key}) : super(key: key);

  @override
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<TableBasicsExample> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                  Timestamp timestamp = Timestamp.fromDate(selectedDay);
                  BlocProvider.of<RecentBloc>(context)
                      .add(FilterEpisodeEvent(timestamp.toDate()));
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
              BlocBuilder<RecentBloc, RecentState>(
                builder: (context, state) {
                  if (state is FilterLoading) {
                    return const LoadingIndicator();
                  }
                  if (state is FilteredEpisodesLoaded) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: state.filterEpisodes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            title:
                                Text(state.filterEpisodes[index].episodeName));
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
