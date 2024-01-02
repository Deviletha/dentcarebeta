import 'package:flutter/material.dart';

class CategoryCardView extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final void Function()? onTap;

  const CategoryCardView(
      {super.key,
      required this.categoryName,
      required this.imagePath,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                // boxShadow: const [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 1,
                //   ),
                // ],
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "⭐ 4.6(2650)",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              categoryName,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "₹ 2550",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
