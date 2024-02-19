import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.pink.shade100.withOpacity(0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height:20),
                Center(
                    child: ClipOval(child: Image.network('https://pbs.twimg.com/media/FysOMwVWAAAk5wz.jpg', height:100, width:100)), /// widget for picture,
                ),
                const SizedBox(height:10),
                const Text('reebhu@gmail.com', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                const SizedBox(height:10),
                const Text('Edit Info', style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
                const SizedBox(height:10),
              ],
            ),
          ),
          Container(
            height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
              ),
              child: const Center(child: Text(
                'Profile Status',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueGrey),
              ),),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1),
            ),
              child: const Center(child: Text(
                'Privacy Center',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueGrey),
              ),),),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1),
            ),
              child: const Center(child: Text(
                'Log Out',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blueGrey),
              ),),),
        ],
      ),
      );
  }
}