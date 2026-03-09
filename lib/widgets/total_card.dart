import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';

class TotalCard extends StatelessWidget {
  const TotalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 23),
      color: AppColors.secondory,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("Loan Amount",
                  style: TextStyle(color:AppColors.cardColor,),
                ),
                SizedBox(width: 140),
                Text(
                  "EGP 14,500.00",
                  style: TextStyle(
                    color:AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Text('Loan Period',
                  style: TextStyle(color: AppColors.cardColor),
                ),
                SizedBox(width: 170),
                Text('12 Months', style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  )),
              ],
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Text('Interest Rate',
                  style: TextStyle(color: AppColors.cardColor),
                ),
                SizedBox(width: 210),
                Text('10%', style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                    
                  )),
              ],
            ),
            SizedBox(height: 15),

            Row(
              children: [
                Text('Admin Fee',
                  style: TextStyle(color: AppColors.cardColor),
                ),
                SizedBox(width: 185),
                Text('EGP 50.00', style: TextStyle(color:AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                  )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
