import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'inbox.dart';
import 'common/handle_click.dart';
import 'home.dart';
import 'insights.dart';
import 'profile.dart';

class Dashboard extends StatefulWidget {

  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final primaryColor = const Color(0xfffec407a);
  int _currentIndex = 0;
  final List<Widget> _tabs=[
    const Home(),
    Insights(),
    // const Inbox(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Aunt Flo', style: TextStyle(fontSize: 40)),
          backgroundColor: primaryColor,
          actions:[
            PopupMenuButton(
              onSelected: (item) => handleClick(item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text('Theme Data')),
                PopupMenuItem<int>(value: 1, child: Text('Help')),
                PopupMenuItem<int>(value: 1, child: Text('About Us')),
              ],
              child: const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(
                  CupertinoIcons.ellipsis_vertical,
                ),
              ),
            ),
          ],
          centerTitle: true),
        body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Colors.pink.shade400,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_rounded, color: Colors.grey,),
            label: 'Insights',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.account_circle, color: Colors.grey,),
          //   label: 'Inbox',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.grey,),
            label: 'Profile',
          ),
        ],
      currentIndex: _currentIndex,
      onTap: (index){
        setState(() {
          _currentIndex=index;
        });
      }
      ),
    );
  }
}
