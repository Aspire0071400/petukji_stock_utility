import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class CustomRadioListTile extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;
  final String title;
  final Color fillColor;
  final bool isTextFiled;
  final double width;
  final String fieldText;
  final Widget singleWidget;

  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    this.fillColor = Colors.black,
    this.fieldText = "",
    this.singleWidget = const Text(''),
    required this.isTextFiled,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      child: ListTile(
        leading: Radio<String>(
          fillColor: WidgetStatePropertyAll(fillColor),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        title: isTextFiled ? singleWidget : Text(title),
      ),
    );
  }
}
