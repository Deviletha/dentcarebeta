import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      endDrawerEnableOpenDragGesture: true,
      body: Center(
        child: Container(
          width: 260, // Set your desired width here
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/Logo.png",
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We will Update Soon...",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Stay Tuned",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
