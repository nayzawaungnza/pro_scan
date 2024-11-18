import 'package:flutter/material.dart';

class ProScanButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? color;
  final double? fontSize;
  final Function() onTap;
  final double? width;
  final double? height;

  const ProScanButton(
      {super.key,
      required this.text,
      this.textColor,
      this.color,
      this.fontSize,
      required this.onTap,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
