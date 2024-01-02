import 'package:flutter/material.dart';

class TopBrandTile extends StatelessWidget {
  final String imagePath;
  final void Function()? onTap;

  const TopBrandTile({super.key, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                spreadRadius: 2,
                color: Colors.grey.shade300,
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(360)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
