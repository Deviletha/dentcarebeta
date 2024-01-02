import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _postalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1,
          decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/signupbg.png"), fit: BoxFit.cover
              // )
              ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  "assets/Logo.png",
                  height: 150,
                )),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Name",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid name';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Email ID",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Enter a valid Email ID';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _contactController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Mobile",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter a valid Number";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Address",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Address';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _stateController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "State",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid State';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "location",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid location';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _postalController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: "Postal code",
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Postal code';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Color(ColorT.themeColor),
                      shadowColor: Colors.teal[300],
                    ),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Copyright ©️ 2024")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
