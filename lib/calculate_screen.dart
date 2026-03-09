import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';
import 'package:loan_calculator_app/widgets/elevated_button.dart';
import 'widgets/result_card.dart';
import 'widgets/total_card.dart';
import 'widgets/alert_message.dart';


class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40455b),
      appBar: AppBar(
        leading: BackButton(color: AppColors.textPrimary, ),
        centerTitle: true,
        backgroundColor: Color(0xff40455b),
        title: Text(
          'Loan Summary',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(children: [
              ResultCard(),
              SizedBox(height: 25,),

              TotalCard(),
              SizedBox(height: 20),

              AlertMessage(),
               SizedBox(height: 155),

               SecondButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}