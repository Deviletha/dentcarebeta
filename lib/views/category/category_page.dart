import 'package:dentcarebeta/views/category/widgets/allcategory_card.dart';
import 'package:flutter/material.dart';
import 'category_view.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> images = [
    "assets/kerr.jpeg",
    "assets/nsk.png",
    "assets/sybronEndo.jpeg",
    "assets/Tokuyama.jpeg",
    "assets/colgate.png",
    "assets/mouthwash.jpg",
    "assets/dentall product.jpeg",
    "assets/bond_370x287_bf4.jpg",
    "assets/products.jpeg",
    "assets/instrument.jpg",
    "assets/dental-tools-1.jpg",
    "assets/dentist-equipment.jpg",
    "assets/treatment-units.jpg",
    "assets/topsell.jpg",
    "assets/products.jpeg",
    "assets/dent product.jpg"
  ];

  List<String> categoryNames = [
    "Ayurveda",
    "Anesthetics",
    "Endodontics",
    "CAD/CAM and 3D Printers",
    "Digital Equipment",
    "Hygiene",
    "Lab Products",
    "Orthodontics",
    "Small Equipment",
    "Surgical and Perio",
    "Xray",
    "Restorative",
    "Operatory Products",
    "Infection Control",
    "Preventive",
    "Digital Equipment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      endDrawerEnableOpenDragGesture: true,
      body: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) => getCategory(index),
      ),
    );
  }

  Widget getCategory(int index) {
    return AllCategoryTile(
      imagePath: images[index],
      categoryName: categoryNames[index],
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryView(
                      category: categoryNames[index],
                    )));
      },
    );
  }
}
