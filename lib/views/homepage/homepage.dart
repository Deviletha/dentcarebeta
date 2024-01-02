import 'dart:ui';

import 'package:dentcarebeta/views/Sign_up/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../theme/colors.dart';
import '../cartpage/cart_page.dart';
import '../myorders/orders.dart';
import '../profile_page/profile_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _showIntroDialog(); // Call the function to show the intro dialog
    });
  }

  void _showIntroDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Welcome!",
            style: TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 20),
          ),
          content: Container(
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
                  "Something Amazing Coming Soon...",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text("Signup Here"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Current Location",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              "Kerala, India",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Ionicons.notifications_outline, color: Colors.white
                  // Color(ColorT.themeColor)
                  )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: Icon(Ionicons.bag_outline, color: Colors.white
                  // Color(ColorT.themeColor)
                  )),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Color(
                ColorT.themeColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(
                    title: Text("User Name",
                        style: TextStyle(color: Colors.white)),
                    subtitle:
                        Text("Location", style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      child: Image.asset("assets/profile_avatar.png"),
                    )),
              ),
            ),
            ListTile(
              leading: Icon(
                Ionicons.home_outline,
                color: Colors.black,
              ),
              title: Text("Shop By Medicine"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyOrders()));
              },
              leading: Icon(
                Ionicons.bag_outline,
                color: Colors.black,
              ),
              title: Text("My Order"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              leading: Icon(
                Ionicons.person_outline,
                color: Colors.black,
              ),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(
                Ionicons.pricetag_outline,
                color: Colors.black,
              ),
              title: Text("Offers and Discounts"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Ionicons.help_circle_outline,
                color: Colors.black,
              ),
              title: Text("FAQ's and Help"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Ionicons.alert_circle_outline,
                color: Colors.black,
              ),
              title: Text("Privacy and Terms"),
            ),
            ListTile(
              leading: Icon(
                Ionicons.information_circle_outline,
                color: Colors.black,
              ),
              title: Text("About Us"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Ionicons.log_out_outline,
                color: Colors.black,
              ),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background designs or images go here
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/homepagebg.png"),
                  fit: BoxFit.fitWidth,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(1),
                    // Adjust the opacity for the blur effect
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                // Adjust the sigma values for blur intensity
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  // Add your other widgets here
                ),
              ),
            ),
          ),
          // Centered message
          Center(
            child: Container(
              color: Colors.white38,
              width: double.infinity, // Set your desired width here
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
                        fontSize: 28),
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
        ],
      ),
    );
  }
}
