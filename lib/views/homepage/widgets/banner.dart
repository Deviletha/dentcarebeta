import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final String imagePath;

  const BannerTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.circular(2),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
      ),
    );
  }
}
