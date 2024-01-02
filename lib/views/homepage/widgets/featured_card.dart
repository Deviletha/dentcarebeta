import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class FeaturedTile extends StatelessWidget {
  final String itemName;
  final String imagePath;
  final String price;
  final void Function()? onPressed;

  const FeaturedTile(
      {super.key,
      required this.itemName,
      required this.imagePath,
      required this.price,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 160,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 1,
                  ),
                ],
                color: Colors.white,
              ),
              height: 160,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover),
                      color: Colors.white,
                    ),
                    height: 160,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemName,
                            style: TextStyle(fontSize: 12, color: Colors.black
                                // Color(ColorT.textColor),
                                ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            price,
                            style: TextStyle(fontSize: 12, color: Colors.black
                                // Color(ColorT.textColor),
                                ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: onPressed,
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
