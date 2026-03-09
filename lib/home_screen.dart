import 'package:flutter/material.dart';
import 'package:loan_calculator_app/home_screen.dart';
import 'package:flutter/widgets.dart';
import 'calculate_screen.dart';
import 'widgets/elevated_button.dart';
import 'widgets/loan_amount.dart';
import 'widgets/loan_period.dart';
import 'widgets/vehicle_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double amount = 1000;
  double Months = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40455b),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff40455b),
        title: Text(
          'Loan Calculator',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const VehicleCard(),
                SizedBox(height: 30),

                LoanAmount(
                  amount: amount,
                  onChanged: (val) {
                    setState(() {
                      amount = val;
                    });
                  },
                ),
                SizedBox(height: 20),

                LaonPeriod(
                  Months: Months,
                  onChanged: (val) {
                    setState(() {
                      Months = val;
                    });
                  },
                ),
                SizedBox(height: 80),

                const ElevaredButton(),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
