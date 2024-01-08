import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../Config/api_helper.dart';

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

  apiForSignup() async {
    try {
      var response = await ApiHelper().post(endpoint: "common/signUP", body: {
        "name": _nameController.text.toString(),
        "first_name": _nameController.text.toString(),
        "email": _emailController.text.toString(),
        "contact": _contactController.text.toString(),
        "address": _addressController.text.toString(),
        "state": _stateController.text.toString(),
        "location": _locationController.text.toString(),
        "postal": _postalController.text.toString(),
      }).catchError((err) {});

      if (response != null) {
        var jsonResponse = jsonDecode(response);
        var status = jsonResponse['status'];

        if (status == 2) {
          Fluttertoast.showToast(
            msg: "User already exists",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          _nameController.clear();
          _emailController.clear();
          _contactController.clear();
          _addressController.clear();
          _stateController.clear();
          _locationController.clear();
          _postalController.clear();
          return;
          // Return early to prevent further execution
        }

        setState(() async {
          debugPrint('api successful:');
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => LoginPage()));

          Fluttertoast.showToast(
            msg: "Signup success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        });
      } else {
        debugPrint('api failed:');
      }
    } catch (err) {
      debugPrint('An error occurred: $err');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg44.jpeg"),
                    colorFilter:
                        ColorFilter.mode(Colors.lightBlue, BlendMode.color),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                    "assets/Logo.png",
                    height: 100,
                  )),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        isDense: true,
                        fillColor: Colors.white,
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.solid)),
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.name,
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        labelText: "Address",
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        labelText: "State",
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        isDense: true,
                        labelText: "location",
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.white),
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                                strokeAlign: 10,
                                style: BorderStyle.none)),
                        isDense: true,
                        labelText: "Postal code",
                        labelStyle: TextStyle(color: Colors.white)),
                    textInputAction: TextInputAction.done,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
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
                        backgroundColor: Colors.white,
                        // Color(ColorT.redColor),
                        shadowColor: Colors.teal[300],
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text("Copyright ©️ 2024")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
