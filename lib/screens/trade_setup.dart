import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/screens/trade_lab.dart';
import 'package:petukji_stock_utility/widgets/Custom_Button.dart';
import 'package:petukji_stock_utility/widgets/custom_radio_tile.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class TradeSetup extends StatefulWidget {
  const TradeSetup({super.key});

  @override
  TradeSetupState createState() => TradeSetupState();
}

class TradeSetupState extends State<TradeSetup> {
  CustomTextField entryPrice = CustomTextField(
    hinttext: 'Enter Entry Price',
    labletext: 'Entry Price',
    defaultValue: '',
    heightofBox: 60,
    maxlengthChar: 12,
    readOnly: false,
    multiLine: 1,
  );
  CustomTextField exitPrice = CustomTextField(
    hinttext: 'Enter Exit Price',
    labletext: 'Exit Price',
    defaultValue: '',
    heightofBox: 60,
    maxlengthChar: 12,
    readOnly: false,
    multiLine: 1,
  );
  CustomTextField slPrice = CustomTextField(
    hinttext: 'Enter SL Price',
    labletext: 'SL Price',
    defaultValue: '',
    heightofBox: 60,
    maxlengthChar: 12,
    readOnly: false,
    multiLine: 1,
  );
  CustomTextField trailPrice = CustomTextField(
    hinttext: 'Enter Trail SL',
    labletext: 'Trail SL',
    defaultValue: '',
    multiLine: 1,
    readOnly: false,
    maxlengthChar: 12,
    heightofBox: 60,
  );
  CustomTextField qty = CustomTextField(
    hinttext: 'Enter Quantity',
    labletext: 'Qty',
    defaultValue: '',
    multiLine: 1,
    suffixText: "1 Qty = 1 Lot",
    readOnly: false,
    maxlengthChar: 10,
    heightofBox: 60,
  );
  CustomTextField ceStrike = CustomTextField(
    hinttext: 'CE Strike',
    labletext: 'CE Strike',
    defaultValue: '',
    heightofBox: 60,
    readOnly: false,
    multiLine: 1,
  );
  CustomTextField peStrike = CustomTextField(
    hinttext: 'PE Strike',
    labletext: 'PE Strike',
    defaultValue: '',
    heightofBox: 60,
    readOnly: false,
    multiLine: 1,
  );
  CustomTextField strikePrice = CustomTextField(
    hinttext: 'Search Strike Price',
    labletext: 'Search Strike Price',
    defaultValue: '',
    heightofBox: 60,
    readOnly: false,
    multiLine: 1,
    maxlengthChar: 20,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trade Setup',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Please fill trade preset:'),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: width * 0.45, child: entryPrice),
                          SizedBox(
                            width: width * 0.45,
                            child: exitPrice,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: width * 0.45, child: slPrice),
                          SizedBox(
                            width: width * 0.45,
                            child: trailPrice,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: width * 0.9,
                            child: qty,
                          ),
                        ],
                      ),
                    ],
                  )),

              const SizedBox(height: 10),
              //TextField
              strikePrice,
              CustomButton(onPressed: () {}, text: 'Search', width: 0.4),

              const SizedBox(height: 10),
              //Buttons

              const SizedBox(height: 20),
              ceStrike,
              const SizedBox(height: 10),

              peStrike,
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      onPressed: () {}, text: 'Add to CE', width: 0.35),
                  CustomButton(
                      onPressed: () {}, text: 'Add to PE', width: 0.35),
                ],
              ),

              const SizedBox(height: 20),

              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TradeLab(),
                    ),
                  );
                },
                text: 'Proceed to Trade',
                width: 0.5,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
