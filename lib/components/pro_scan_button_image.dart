import 'package:flutter/material.dart';

class ProScanButtonImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final Color? borderColor;
  const ProScanButtonImage(
      {super.key,
      required this.imagePath,
      this.width,
      this.height,
      this.borderColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    ));
  }
}
