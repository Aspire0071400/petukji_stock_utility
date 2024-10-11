import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double width;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(MediaQuery.of(context).size.width * width, 45),
        ),
        maximumSize: WidgetStatePropertyAll(
          Size(MediaQuery.of(context).size.width * width, 45),
        ),
        elevation: const WidgetStatePropertyAll(10),
        splashFactory: InkRipple.splashFactory,
        overlayColor: const WidgetStatePropertyAll(Colors.white38),
        backgroundColor: const WidgetStatePropertyAll(Colors.black87),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
