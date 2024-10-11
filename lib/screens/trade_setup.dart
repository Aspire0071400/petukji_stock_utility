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
  String _selectedStock = 'Nifty';
  CustomTextField strikePrice = CustomTextField();
  CustomTextField ceStrike = CustomTextField();
  CustomTextField peStrike = CustomTextField();
  CustomTextField entryPrice = CustomTextField();
  CustomTextField exitPrice = CustomTextField();
  CustomTextField slPrice = CustomTextField();
  CustomTextField trailPrice = CustomTextField();
  CustomTextField qty = CustomTextField();
  CustomTextField c2cPrice = CustomTextField();

  @override
  Widget build(BuildContext context) {
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
              const Text('Please select an Option:'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomRadioListTile(
                      width: 0.24,
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
                      width: 0.25,
                      value: "M Cap",
                      groupValue: _selectedStock,
                      onChanged: (value) {
                        setState(() {
                          _selectedStock = value!;
                        });
                      },
                      title: 'M Cap',
                    ),
                    CustomRadioListTile(
                      width: 0.26,
                      value: 'B Nifty',
                      groupValue: _selectedStock,
                      onChanged: (value) {
                        setState(() {
                          _selectedStock = value!;
                        });
                      },
                      title: 'B Nifty',
                    ),
                    CustomRadioListTile(
                      width: 0.25,
                      value: 'F Nifty',
                      groupValue: _selectedStock,
                      onChanged: (value) {
                        setState(() {
                          _selectedStock = value!;
                        });
                      },
                      title: 'F Nifty',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              //TextField
              strikePrice = CustomTextField(
                hinttext: 'Enter Strike Price',
                labletext: 'Strike Price',
                defaultValue: '',
                heightofBox: 60,
                readOnly: false,
                multiLine: 1,
                maxlengthChar: 12,
              ),

              const SizedBox(height: 10),
              //Buttons
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
              ceStrike = CustomTextField(
                hinttext: 'CE Strike',
                labletext: 'CE Strike',
                defaultValue: '',
                heightofBox: 60,
                readOnly: false,
                multiLine: 1,
              ),
              const SizedBox(height: 10),

              peStrike = CustomTextField(
                hinttext: 'PE Strike',
                labletext: 'PE Strike',
                defaultValue: '',
                heightofBox: 60,
                readOnly: false,
                multiLine: 1,
              ),
              const SizedBox(height: 10),

              const Text('Preset',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),

              //Preset fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: entryPrice = CustomTextField(
                      hinttext: 'Enter Entry Price',
                      labletext: 'Entry Price',
                      defaultValue: '',
                      heightofBox: 60,
                      maxlengthChar: 12,
                      readOnly: false,
                      multiLine: 1,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: exitPrice = CustomTextField(
                      hinttext: 'Enter Exit Price',
                      labletext: 'Exit Price',
                      defaultValue: '',
                      heightofBox: 60,
                      maxlengthChar: 12,
                      readOnly: false,
                      multiLine: 1,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: slPrice = CustomTextField(
                      hinttext: 'Enter SL Price',
                      labletext: 'SL Price',
                      defaultValue: '',
                      heightofBox: 60,
                      maxlengthChar: 12,
                      readOnly: false,
                      multiLine: 1,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: trailPrice = CustomTextField(
                      hinttext: 'Enter Trail SL',
                      labletext: 'Trail SL',
                      defaultValue: '',
                      multiLine: 1,
                      readOnly: false,
                      maxlengthChar: 12,
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
                    child: qty = CustomTextField(
                      hinttext: 'Enter Quantity',
                      labletext: 'Qty',
                      defaultValue: '',
                      multiLine: 1,
                      readOnly: false,
                      maxlengthChar: 10,
                      heightofBox: 60,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: c2cPrice = CustomTextField(
                      hinttext: 'Enter C2C Price',
                      labletext: 'C2C Price',
                      defaultValue: '',
                      multiLine: 1,
                      readOnly: false,
                      maxlengthChar: 10,
                      heightofBox: 60,
                    ),
                  ),
                ],
              ),

              CustomButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TradeLab(),
                    ),
                  );
                },
                text: 'Proceed to Lab',
                width: 0.45,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
