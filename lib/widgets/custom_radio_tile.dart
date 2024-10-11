import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class CustomRadioListTile extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;
  final String title;
  final Color fillColor;

  final double width;
  final String fieldText;

  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    this.fillColor = Colors.black,
    this.fieldText = "",
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      child: RadioListTile(
        value: value,
        visualDensity: VisualDensity.compact,
        title: Text(title),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
