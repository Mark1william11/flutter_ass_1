// custom_card.dart
import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  final String topLeftText;
  final String centerText;
  final String bottomRightText;
  final double elevation;
  final double borderRadius;
  final Color backgroundColor;

  const CardTemplate({
    this.topLeftText = "Top Left",
    this.centerText = "Center",
    this.bottomRightText = "Bottom Right",
    this.elevation = 4.0,
    this.borderRadius = 15.0,
    this.backgroundColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      color: backgroundColor,
      child: Container(
        height: 200,
        child: Stack(
          children: [
            Positioned(
              top: 12,
              left: 10,
              child: Text(
                topLeftText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                centerText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                bottomRightText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
