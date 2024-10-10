import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/firebase_options.dart';
import 'package:petukji_stock_utility/screens/auth/login_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase SDK
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
