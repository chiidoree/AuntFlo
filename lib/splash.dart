import 'dart:async';

import 'package:flutter/material.dart';

class Splash  extends StatefulWidget {
  const Splash ({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    Timer(
      const Duration(seconds: 3),
        ()=> Navigator.of(context).pushReplacementNamed('/login')
    );
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent.shade200.withOpacity(0.3),
      body: Center(
        child: Image.asset('assets/images/new.png', height: 350, width:350),
      )
    );
  }
}
