import 'package:flutter/material.dart';

class AllCategoryTile extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final void Function()? onTap;

  const AllCategoryTile(
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
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 1,
              ),
            ],
            color: Colors.white,
          ),
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
                // Image border// Image radius
              ),
            ),
            title: Text(
              categoryName,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
