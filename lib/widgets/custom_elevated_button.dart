import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double widthFactor;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double borderWidth;
  final double? fontSize;

  const CustomElevatedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.widthFactor = 0.2,
    this.height = 45,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.borderRadius = 12,
    this.borderWidth = 5,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width * widthFactor, height),
        ),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
