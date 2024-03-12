import 'package:aunt_flo/profile.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'insights.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final List<Widget> screens = [Home(), Insights(), MyProfile()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {

    });
    return Scaffold(
      appBar: currentIndex == 0?
      AppBar(
        title: Center(
          child: Text(
            'Aunt Flo',
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<int>(
        itemBuilder: (context){
          return[
            PopupMenuItem<int>(
               value: 0,
               child: Text('Theme Data'),
    ),
      PopupMenuItem<int>(
        value: 1,
        child: Text('Help'),
        ),
    PopupMenuItem<int>(
    value: 0,
    child: Text('About Us'),
    ),
      ];
          },
            offset: Offset(10,40),
          )
        ],
      )
      :null,
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (selectedIndex) => {
          setState(() {
            currentIndex = selectedIndex;
          })
        },
        selectedItemColor: Colors.pinkAccent.shade400,
        backgroundColor: Colors.pink.shade50,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                // color: Colors.lightGreen,
              ),
              label: 'Home',
              backgroundColor: Colors.pink.shade100),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.insights_outlined,
                color: Colors.black,
              ),
              label: 'Insights'),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.call,
          //       // color: Colors.lightGreen,
          //     ),
          //     label: 'Contact'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: Colors.lightGreen,
              ),
              label: 'Profile'),

        ],
      ),
    );
  }
}