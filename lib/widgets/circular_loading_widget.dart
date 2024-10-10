import 'package:flutter/material.dart';

class CircularLoadingIndicator extends StatelessWidget {
  final Color color;
  final double size;
  final double strokeWidth;

  const CircularLoadingIndicator({
    this.color = Colors.blue,
    this.size = 50.0,
    this.strokeWidth = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
