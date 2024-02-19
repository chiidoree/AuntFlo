import 'package:aunt_flo/dashboard.dart';
import 'package:aunt_flo/profile.dart';
import 'package:aunt_flo/splash.dart';
import 'package:flutter/material.dart';
import 'package:aunt_flo/common/route_constants.dart';
import 'home.dart';
import 'login.dart';
import 'create_account.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  final primaryColor = const Color(0xfffec407a);

  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aunt Flo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        primaryColor: primaryColor,
        useMaterial3: false,
      ),
      initialRoute: RouteConstants.initialRoute,
      routes: {
        RouteConstants.initialRoute: (context) => const Splash(),
        RouteConstants.loginRoute: (context) => const Login(),
        RouteConstants.createAccountRoute: (context) => const CreateAccount(),
        RouteConstants.dashboardRoute: (context) => const Dashboard(),
        RouteConstants.homeRoute: (context) => const Home(),
        RouteConstants.profileRoute: (context) => const Profile(),
      },
    );
  }
}

class MyBottomNavBarApp extends StatefulWidget {
  const MyBottomNavBarApp({super.key});

  @override
  State<MyBottomNavBarApp> createState() => _MyBottomNavBarAppState();
}

class _MyBottomNavBarAppState extends State<MyBottomNavBarApp> {
  @override
  Widget build(BuildContext context) {
    return const Dashboard();
  }
}