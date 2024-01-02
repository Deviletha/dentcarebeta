import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class ProductTileCopy extends StatelessWidget {
  final String itemName;
  final String description;
  final String totalPrice;
  final String imagePath;
  final String actualPrice;
  final String discount;
  final void Function()? onPressed;
  final void Function()? onTap;
  final void Function()? addCart;

  const ProductTileCopy(
      {super.key,
      required this.itemName,
      required this.description,
      required this.totalPrice,
      required this.imagePath,
      required this.actualPrice,
      this.onPressed,
      this.onTap,
      required this.discount,
      this.addCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 1,
            ),
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            itemName,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            description,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            actualPrice,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(ColorT.textColor),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            totalPrice,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            discount,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Top Selling",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
