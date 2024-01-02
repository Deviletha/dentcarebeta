import 'package:flutter/material.dart';

import '../theme/colors.dart';


class Heading extends StatelessWidget {
  const Heading({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 17,
              color: Colors.black),
          ),
        ],
      ),
    );
  }
}
