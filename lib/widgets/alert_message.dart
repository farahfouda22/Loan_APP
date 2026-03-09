import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';

class AlertMessage extends StatelessWidget {
  const AlertMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.alertmess,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Icon(Icons.info, color: AppColors.primary),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Includes interest and administrative fees. By clicking 'Confirm Loan', you agree to our Terms and Conditions.",
                    style: TextStyle(color: AppColors.cardColor),
                  ),
                ),

                SizedBox(width: 140),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
