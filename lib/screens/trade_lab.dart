import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/widgets/custom_radio_tile.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class TradeLab extends StatefulWidget {
  const TradeLab({super.key});

  @override
  State<TradeLab> createState() => _TradeLabState();
}

class _TradeLabState extends State<TradeLab> {
  var _selectStrike = "CE Strike";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Trade Lab',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Enter Entry Price',
                  labletext: 'Entry Price',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: false,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Enter Exit Price',
                  labletext: 'Exit Price',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: false,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Enter Custom SL',
                  labletext: 'Custom SL',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: false,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Enter Trail SL',
                  labletext: 'Trail SL',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: false,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: CustomTextField(
                    hinttext: 'Enter Quantity',
                    labletext: 'Qty',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: false,
                    isNumberOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                    customColor: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: CustomTextField(
                    hinttext: 'Enter C2C Price',
                    labletext: 'C2C Price',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: false,
                    isNumberOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                    customColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          //radio button row 1
          CustomRadioListTile(
            width: 1,
            isTextFiled: true,
            fieldText: 'CE-Strike',
            value: "CE Strike",
            groupValue: _selectStrike,
            onChanged: (value) {
              setState(() {
                _selectStrike = value!;
              });
            },
            title: 'CE Strike',
            singleWidget: Row(
              children: [
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: CustomTextField(
                    hinttext: 'Enter CE-Code',
                    labletext: 'CE-Code',
                    multiLine: 1,
                    readOnly: false,
                    isNumberOnly: false,
                    maxlengthChar: 10,
                    heightofBox: 60,
                    customColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.2, 45)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Buy',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.2, 45)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Exit',
                  ),
                ),
              ],
            ),
          ),
          //radio button row 2
          CustomRadioListTile(
            width: 1,
            isTextFiled: true,
            fieldText: 'PE-Strike',
            value: "PE Strike",
            groupValue: _selectStrike,
            onChanged: (value) {
              setState(() {
                _selectStrike = value!;
              });
            },
            title: 'PE Strike',
            singleWidget: Row(
              children: [
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: CustomTextField(
                    hinttext: 'Enter PE-Code',
                    labletext: 'PE-Code',
                    multiLine: 1,
                    readOnly: false,
                    isNumberOnly: false,
                    maxlengthChar: 10,
                    heightofBox: 60,
                    customColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.2, 45)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Buy',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.2, 45)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Exit',
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          //Trade Details with rows and single Text
          const Center(
              child: Text(
            'Trade Detail',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Entry Price',
                  labletext: 'Entry Price',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'SL Price',
                  labletext: 'SL Price',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Entry Order No',
                  labletext: 'Order No',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'SL Order No',
                  labletext: 'SL Order No',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'LTP',
                  labletext: 'LTP',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Gain',
                  labletext: 'Gain',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Current SL',
                  labletext: 'Current SL',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: CustomTextField(
                  hinttext: 'Risk',
                  labletext: 'Risk',
                  defaultValue: '',
                  multiLine: 1,
                  readOnly: true,
                  isNumberOnly: true,
                  maxlengthChar: 10,
                  heightofBox: 60,
                  customColor: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * 0.2, 45)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                ),
                child: const Text(
                  'SL+',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * 0.2, 45)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                ),
                child: const Text(
                  'SL-',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * 0.2, 45)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                ),
                child: const Text(
                  'C2C SL',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * 0.2, 45)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                ),
                child: const Text(
                  'SL-',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(
                  Size(MediaQuery.of(context).size.width * 0.4, 45)),
              backgroundColor: const WidgetStatePropertyAll(Colors.white),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black, width: 5),
                ),
              ),
            ),
            child: const Text(
              'Choose Strike',
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
