import 'package:flutter/material.dart';
import 'package:loan_calculator_app/home_screen.dart' show HomeScreen;

class LoanApp extends StatelessWidget {
  const LoanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
