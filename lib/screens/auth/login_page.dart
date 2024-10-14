import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:petukji_stock_utility/screens/auth/disclaimer_page.dart';
import 'package:petukji_stock_utility/services/auth.dart';
import 'package:petukji_stock_utility/widgets/circular_loading_widget.dart';
import 'package:petukji_stock_utility/widgets/custom_elevated_button.dart';
import 'package:petukji_stock_utility/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();
  bool isOtpSent = false;
  bool isLoading = false;
  bool? isPhoneReadOnly;
  String? verificationId;
  int remainingTime = 0;
  Timer? timer;

  // Creating an instance of CustomTextField
  late CustomTextField otpTextFiled;
  late CustomTextField phoneTextField;

//dispose method
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

//START TIMER MEHOD
  void startTimer() {
    remainingTime = 30;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingTime > 0) {
          remainingTime--;
        } else {
          timer.cancel();
        }
      });
    });
  }

//RESET EVERTHING METHOD
  void resetEverything() {
    setState(() {
      isOtpSent = false;
      isPhoneReadOnly = false;
      verificationId = null;
      remainingTime = 0;
      phoneTextField.clear();
      otpTextFiled.clear();
    });
    timer?.cancel();
  }

//SEND OTP METHOD
  Future<void> sendOTP() async {
    final phoneNumber = '+91${phoneTextField.text}';
    if (phoneTextField.text.length != 10) {
      _showSnackBar('Please enter a valid 10-digit phone number', Colors.red);
      return;
    }

    setState(() {
      isLoading = true;
      isPhoneReadOnly = true;
    });

    try {
      await _authService.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        onCodeSent: (String verId) {
          setState(() {
            isOtpSent = true;
            verificationId = verId;
            isLoading = false;
          });
          startTimer();
          _showSnackBar('OTP sent successfully', Colors.green);
        },
        onVerificationCompleted: (String message) {
          setState(() {
            isLoading = false;
          });
          _showSnackBar(message, Colors.green);
        },
        onError: (String errorMessage) {
          setState(() {
            isLoading = false;
            isPhoneReadOnly = false;
          });
          _showSnackBar(errorMessage, Colors.red);
        },
      );
    } catch (e) {
      setState(() {
        isLoading = false;
        isPhoneReadOnly = false;
      });
      _showSnackBar('An error occurred. Please try again.', Colors.red);
    }
  }

  //VERIFY OTP METHOD
  Future<void> verifyOTP() async {
    if (verificationId != null) {
      setState(() {
        isLoading = true;
      });

      final isValid = await _authService.signInWithOTP(
        verificationId!,
        otpTextFiled.text,
      );

      setState(() {
        isLoading = false;
      });

      if (isValid) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const DisclaimerPage()),
        );
      } else {
        _showSnackBar('Incorrect OTP', Colors.red);
      }
    }
  }

  //SNACKBAR METHOD
  void _showSnackBar(String message, Color color) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }

//INITSTATE METHOD

  @override
  void initState() {
    super.initState();

    phoneTextField = CustomTextField(
      keyName: "phone",
      labletext: "Mobile",
      hinttext: "Enter your phone number",
      isNumberOnly: true,
      maxlengthChar: 10,
      readOnly: isPhoneReadOnly ?? false,
    );

    otpTextFiled = CustomTextField(
      keyName: "otp",
      labletext: "OTP",
      hinttext: "Enter OTP",
      isNumberOnly: true,
      maxlengthChar: 6,
      onChanged: (value) {
        if (value.length == 6) {
          verifyOTP();
        }
      },
    );
  }

  //BUILD METHOD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.2,
              bottom: 10,
              right: 20,
              left: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //LOGO
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange,
                      ),
                      child: const Text(
                        "LOGO",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 100),

                    //PHONE TEXTFIELD
                    phoneTextField,

                    //OTP TEXTFIELD
                    if (isOtpSent)
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: otpTextFiled,
                      ),
                    const SizedBox(height: 20),

                    //PROCEED || RESEND OTP BUTTON
                    CustomElevatedButton(
                        widthFactor: 0.4,
                        height: 60,
                        fontSize: 18,
                        buttonText: isOtpSent ? 'Resend OTP' : 'Proceed',
                        onPressed: () {
                          isLoading || (isOtpSent && remainingTime > 0)
                              ? null
                              : sendOTP();
                        }),
                    const SizedBox(height: 40),

                    //TIMER
                    if (isOtpSent && remainingTime > 0)
                      Text(
                        'Resend OTP in ${remainingTime.toString().padLeft(2, '0')}',
                        style: const TextStyle(fontSize: 15),
                      ),
                    const SizedBox(height: 40),
                  ],
                ),

                //SWITCH TO ANOTHER USER
                GestureDetector(
                  onTap: resetEverything,
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Switch to Another User",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //CIRCULAR LOADING INDICATOR
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularLoadingIndicator(
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
