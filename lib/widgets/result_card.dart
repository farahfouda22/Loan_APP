import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color:AppColors.darkBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Color.fromARGB(84, 42, 159, 159), width: 2.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        'Estimated monthly installments',
                        style: TextStyle(
                          color: Color.fromARGB(255, 175, 176, 180),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              'EGP 150.00',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '/month',

              style: TextStyle(color: AppColors.cardColor, fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
