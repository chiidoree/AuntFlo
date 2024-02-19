import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(child: SfCalendar(
          todayHighlightColor: Colors.pinkAccent.withOpacity(1),
          backgroundColor: Colors.pinkAccent.withAlpha(50),
          cellBorderColor: Colors.pinkAccent.withOpacity(0.7),
          selectionDecoration: BoxDecoration(
            color: Colors.pinkAccent.withAlpha(100),
            // borderRadius: BorderRadius.circular(10),
          ),
          headerStyle: CalendarHeaderStyle(
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.pinkAccent.withOpacity(0.8),
            ),
          ),
          view: CalendarView.month,
          monthViewSettings: const MonthViewSettings(showAgenda: true, ),
        ),
        ),
    );
  }
}