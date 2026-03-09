import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_calculator_app/calculate_screen.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';

class ElevaredButton extends StatelessWidget {
  const ElevaredButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalculateScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2fc5c5),
        padding: EdgeInsets.symmetric(horizontal: 135, vertical: 18),
      ),
      child: Text(
        'APPLY LOAN',
        style: TextStyle(
          color: AppColors.darkBackground,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      
    );
    
  }
}
class SecondButton extends StatelessWidget {
  const SecondButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CalculateScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2fc5c5),
        padding: EdgeInsets.symmetric(horizontal: 125, vertical: 17),
      ),
      child: Text(
        'CONFIRM LOAN',
        style: TextStyle(
          color:AppColors.darkBackground,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
