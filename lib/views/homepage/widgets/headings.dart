import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String heading;
  final String buttonText;
  final void Function() onPressed;

  const TitleText(
      {super.key,
      required this.heading,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ],
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}
