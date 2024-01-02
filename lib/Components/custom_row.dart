import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    required this.text,
    this.icon,
    super.key,
    required this.onTap,
  });

  final String text;
  final Icon? icon;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text),
                Container(
                  child: icon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
