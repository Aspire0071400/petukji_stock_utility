import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/widgets/custom_radio_tile.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class TradeLabSetup extends StatefulWidget {
  const TradeLabSetup({super.key});

  @override
  TradeLabSetupState createState() => TradeLabSetupState();
}

class TradeLabSetupState extends State<TradeLabSetup> {
  String _selectedStock = 'Nifty';
  final CustomTextField txtFld = CustomTextField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please select an Option:'),
            Row(
              children: [
                CustomRadioListTile(
                  width: 0.45,
                  isTextFiled: false,
                  value: "Nifty",
                  groupValue: _selectedStock,
                  onChanged: (value) {
                    setState(() {
                      _selectedStock = value!;
                    });
                  },
                  title: 'Nifty',
                ),
                CustomRadioListTile(
                  width: 0.45,
                  isTextFiled: false,
                  value: "Mid Cap",
                  groupValue: _selectedStock,
                  onChanged: (value) {
                    setState(() {
                      _selectedStock = value!;
                    });
                  },
                  title: 'Mid Cap',
                ),
              ],
            ),
            Row(
              children: [
                CustomRadioListTile(
                  width: 0.45,
                  isTextFiled: false,
                  value: 'Bank Nifty',
                  groupValue: _selectedStock,
                  onChanged: (value) {
                    setState(() {
                      _selectedStock = value!;
                    });
                  },
                  title: 'Bank Nifty',
                ),
                CustomRadioListTile(
                  width: 0.45,
                  isTextFiled: false,
                  value: 'Fin Nifty',
                  groupValue: _selectedStock,
                  onChanged: (value) {
                    setState(() {
                      _selectedStock = value!;
                    });
                  },
                  title: 'Fin Nifty',
                ),
              ],
            ),

            const SizedBox(height: 20),
            //TextField
            CustomTextField(
              keyName: 'strikePrice',
              hinttext: 'Enter Strike Price',
              labletext: 'Strike Price',
              defaultValue: '',
              multiLine: 1,
              readOnly: false,
              isNumberOnly: true,
              maxlengthChar: 10,
              heightofBox: 60,
              customColor: Colors.blue,
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.3, 50)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add to CE',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.3, 50)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(color: Colors.black, width: 5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add To PE',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            CustomTextField(
              keyName: 'CE-Strike',
              hinttext: 'Enter CE-Strike ',
              labletext: 'CE-Strike ',
              defaultValue: '',
              multiLine: 1,
              readOnly: false,
              isNumberOnly: true,
              maxlengthChar: 10,
              heightofBox: 60,
              customColor: Colors.blue,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              keyName: 'CE-Code',
              hinttext: 'Enter CE-Code ',
              labletext: 'CE Price',
              defaultValue: '',
              multiLine: 1,
              readOnly: false,
              isNumberOnly: true,
              maxlengthChar: 10,
              heightofBox: 60,
              customColor: Colors.blue,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              keyName: 'PE_Strike',
              hinttext: 'Enter PE-Strike',
              labletext: 'PE-Strike',
              defaultValue: '',
              multiLine: 1,
              readOnly: false,
              isNumberOnly: true,
              maxlengthChar: 10,
              heightofBox: 60,
              customColor: Colors.blue,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              keyName: 'PE-Code',
              hinttext: 'Enter PE-Code',
              labletext: 'PE-Code',
              defaultValue: '',
              multiLine: 1,
              readOnly: false,
              isNumberOnly: true,
              maxlengthChar: 10,
              heightofBox: 60,
              customColor: Colors.blue,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width * 0.3, 50)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.black, width: 5),
                    ),
                  ),
                ),
                child: const Text(
                  'Proceed to Lab',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
