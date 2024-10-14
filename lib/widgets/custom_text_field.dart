import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    this.keyName = "",
    this.hinttext = 'Enter Value..',
    this.labletext = "",
    this.defaultValue = "",
    this.multiLine = 1,
    this.suffixText = "",
    this.readOnly = false,
    this.isNumberOnly = false,
    this.maxlengthChar = 200,
    this.heightofBox = 0,
    this.onChanged,
    this.onFocusChanged,
    this.customColor = const Color(0xFF0292B7),
  });

  TextEditingController _textEditingController = TextEditingController();
  late ValueChanged<String>? onChanged;
  final ValueChanged<bool>? onFocusChanged; // Callback for focus change

  String _containerValue = "";
  String hinttext = "";
  String labletext = "";
  String txt = "";
  String suffixText = "";
  String defaultValue = "";
  String keyName;
  int multiLine = 1;
  int maxlengthChar = 200;
  double heightofBox = 0;
  bool isNumberOnly;
  bool readOnly;
  Color customColor = const Color(0xFF0292B7);
  get hint {
    return hinttext;
  }

  get lable {
    return labletext;
  }

  get text {
    return _textEditingController.text;
  }

  set fillText(String s) {
    _textEditingController.text = s;
  }

  void setText(String s) {
    //_containerValue = s;
    _textEditingController.text = s;
  }

  void clear() {
    _textEditingController.text = "";
  }

  String setText1(String s) {
    _containerValue = s;
    return "";
  }

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextField createState() => _CustomTextField();
  final FocusNode _focusNode = FocusNode(); // Initialize FocusNode
}

class _CustomTextField extends State<CustomTextField> {
  //late TextEditingController _textEditingController;

  late String hintText;

  @override
  void initState() {
    super.initState();
    widget._containerValue = widget.defaultValue;
    widget._textEditingController =
        TextEditingController(text: widget._containerValue);

    widget._focusNode.addListener(() {
      if (widget.onFocusChanged != null) {
        widget.onFocusChanged!(widget._focusNode.hasFocus);
      }
    });
  }

  @override
  void dispose() {
    widget._textEditingController.dispose();
    widget._focusNode.dispose(); // Dispose of the FocusNode
    super.dispose();
  }

  void setValue(String value) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0), //

      child: SizedBox(
        height: widget.heightofBox > 0 ? widget.heightofBox : null,
        child: TextFormField(
          controller: widget._textEditingController,
          focusNode: widget._focusNode,
          maxLength: widget.maxlengthChar,
          readOnly: widget.readOnly,
          onChanged: (value) {
            widget._containerValue = value;
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          keyboardType:
              widget.isNumberOnly ? TextInputType.number : TextInputType.text,
          inputFormatters: widget.isNumberOnly
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ]
              : null,
          decoration: InputDecoration(
            suffixText: widget.suffixText,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: widget.customColor, width: 2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.customColor, width: 2),
            ),
            labelText: widget.lable,
            labelStyle: TextStyle(color: widget.customColor),
            hintText: widget.hint,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 186, 188, 189)),
          ),
          maxLines: widget.multiLine,
        ),
      ),
    );
  }
}
