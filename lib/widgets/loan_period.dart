import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';


class LaonPeriod extends StatelessWidget {
  final double Months;
  final Function (double)onChanged;
  const LaonPeriod({super.key , required this.Months , required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.secondory,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Loan Period Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Loan Period',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 149, 156),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '${Months.toString()} Months',
                  style: TextStyle(
                    color: Color(0xff2fc5c5),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            /// Slider
            Slider(
              thumbColor: Color(0xff2fc5c5),
              activeColor: Color(0xff2fc5c5),
              inactiveColor: Color(0xff40455b),
              value: Months,
              min: 3,
              max: 36,
              divisions: 33,
              label: Months.toString(),
              onChanged: (double newPeriod) {
                onChanged (newPeriod);
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 Months',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 149, 156),
                    fontSize: 11,
                  ),
                ),
                Text(
                  '36 Months',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 149, 156),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
