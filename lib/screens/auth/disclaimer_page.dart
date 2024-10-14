import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/screens/trade_setup.dart';

class DisclaimerPage extends StatefulWidget {
  const DisclaimerPage({super.key});

  @override
  State<DisclaimerPage> createState() => _DisclaimerPageState();
}

class _DisclaimerPageState extends State<DisclaimerPage> {
  bool isChecked = false; // State variable for checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Hi, Subhash,",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Legal Disclaimer\n\n"
                  "This application is provided as a utility to assist users in managing trades and minimizing risk exposure. "
                  "However, we are not a SEBI-registered agent or financial advisory service. The features and functionalities offered are for educational "
                  "and informational purposes only and should not be construed as financial or investment advice.\n\n"
                  "No Guarantee of Results\n\n"
                  "The application aims to help users manage risk, but it does not offer any guarantees of success or profit. "
                  "Users should be aware that trading in financial markets involves inherent risk, including the potential loss of capital. "
                  "Past performance does not guarantee future results.\n\n"
                  "Responsibility\n\n"
                  "By using this application, you acknowledge that all decisions to buy, sell, or hold financial instruments are your own and that any actions you take "
                  "within the application are at your sole risk. We are not responsible for any losses, financial or otherwise, that you may incur from using this application "
                  "or following any recommendations or suggestions presented.\n\n"
                  "Acceptance of Terms\n\n"
                  "By using this application, you agree to this disclaimer and acknowledge that you fully understand the risks involved in trading. "
                  "You are deemed to have accepted that any decisions made through the app are entirely at your discretion and risk.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false; // Update checkbox state
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    "I read this carefully and accept this",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isChecked
                  ? () {
                      // Handle login action when checkbox is checked
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Login successful!"),
                        ),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TradeSetup(),
                        ),
                      );
                    }
                  : null, // Disable button when checkbox is unchecked
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                "Login to Broker",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
