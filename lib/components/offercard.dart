import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final Color? color;
  final Color textColor;
  final String? image;

  OfferCard({
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.color,
    this.textColor = Colors.white,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (image != null) Image.asset(image!),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(color: textColor),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                buttonText,
                style: TextStyle(color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
