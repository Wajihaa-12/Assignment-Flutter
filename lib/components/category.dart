import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CategoryIcon(
          image: "assets/images/beauty.png",
          label: 'Beauty',
        ),
        CategoryIcon(
          image: "assets/images/fashion.png",
          label: 'Fashion',
        ),
        CategoryIcon(
          image: "assets/images/kids.png",
          label: 'Kids',
        ),
        CategoryIcon(
          image: "assets/images/men.png",
          label: 'Mens',
        ),
      ],
    );
  }
}

class CategoryIcon extends StatelessWidget {
  String image;
  String label;

  CategoryIcon({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
