import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarComponent extends StatelessWidget {
  ValueNotifier<DateTime> selectedDate = ValueNotifier<DateTime>(DateTime.now());
  void Function(DateTime selectedDate) callback;

  TableCalendarComponent({ Key? key, required this.callback}) : super(key: key) {
    selectedDate.value = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
        valueListenable: selectedDate,
        builder: (BuildContext context, DateTime value, Widget? widget) {
          return TableCalendar(
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.now(),
            focusedDay: selectedDate.value,
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDate.value, date);
            },
            onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
              selectedDate.value = selectedDay;
              callback(selectedDay);
            },
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              todayDecoration: BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
              todayTextStyle: TextStyle(color: null)
            ),
            locale: "pt_BR",
          );
        });
  }
}
