import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/screens/trade_setup.dart';
import 'package:petukji_stock_utility/widgets/Custom_Button.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class TradeLab extends StatefulWidget {
  const TradeLab({super.key});

  @override
  State<TradeLab> createState() => _TradeLabState();
}

class _TradeLabState extends State<TradeLab> {
  var _selectStrike = "CE Strike";
  CustomTextField ceStrikeHit = CustomTextField();
  CustomTextField peStrikeHit = CustomTextField();

  CustomTextField entryPriceDetail = CustomTextField();
  CustomTextField slPriceDetail = CustomTextField();
  CustomTextField orderNoDetail = CustomTextField();
  CustomTextField slOrderNoDetail = CustomTextField();
  CustomTextField ltpDetail = CustomTextField();
  CustomTextField gainDetail = CustomTextField();
  CustomTextField currentSlDetail = CustomTextField();
  CustomTextField riskDetail = CustomTextField();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trade Lab',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
              ),
            ),
            const SizedBox(height: 10),

            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height * 0.25,
            ),

            //radio button row 1

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ceStrikeHit = CustomTextField(
                    hinttext: 'CE Strike',
                    labletext: 'CE Strike',
                    defaultValue: '',
                    multiLine: 1,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                const SizedBox(width: 40),
                Transform.translate(
                    offset: const Offset(0, -8),
                    child: CustomButton(
                        onPressed: () {}, text: 'Buy', width: 0.2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: peStrikeHit = CustomTextField(
                    hinttext: 'PE Strike',
                    labletext: 'PE Strike',
                    defaultValue: '',
                    multiLine: 1,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                const SizedBox(width: 40),
                Transform.translate(
                    offset: const Offset(0, -8),
                    child: CustomButton(
                        onPressed: () {}, text: 'Buy', width: 0.2)),
              ],
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
                  child: entryPriceDetail = CustomTextField(
                    hinttext: 'Entry Price',
                    labletext: 'Entry Price',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: slPriceDetail = CustomTextField(
                    hinttext: 'SL Price',
                    labletext: 'SL Price',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: orderNoDetail = CustomTextField(
                    hinttext: 'Entry Order No',
                    labletext: 'Order No',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: slOrderNoDetail = CustomTextField(
                    hinttext: 'SL Order No',
                    labletext: 'SL Order No',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ltpDetail = CustomTextField(
                    hinttext: 'LTP',
                    labletext: 'LTP',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: gainDetail = CustomTextField(
                    hinttext: 'Gain',
                    labletext: 'Gain',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: currentSlDetail = CustomTextField(
                    hinttext: 'Current SL',
                    labletext: 'Current SL',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: riskDetail = CustomTextField(
                    hinttext: 'Risk',
                    labletext: 'Risk',
                    defaultValue: '',
                    multiLine: 1,
                    readOnly: true,
                    maxlengthChar: 10,
                    heightofBox: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(onPressed: () {}, text: 'SL+', width: 0.3),
                CustomButton(onPressed: () {}, text: 'SL-', width: 0.3),
                CustomButton(onPressed: () {}, text: 'C2C SL', width: 0.3),
                //CustomButton(onPressed: () {}, text: 'SL+', width: 0.3),
              ],
            ),
            const SizedBox(height: 20),
            CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TradeSetup(),
                    ),
                  );
                },
                text: 'Trade Preset',
                width: 0.4),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
