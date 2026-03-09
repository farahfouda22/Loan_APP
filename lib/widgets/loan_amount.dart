import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';

class LoanAmount extends StatelessWidget {
  final double amount;
  final Function(double) onChanged;

  const LoanAmount({super.key, required this.amount, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.secondory,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Loan Amount Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Loan Amount',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 149, 156),
                    fontSize: 15,
                  ),
                ),
                Text(
                  'EGP ${amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color(0xff2fc5c5),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Slider
            Slider(
              thumbColor: const Color(0xff2fc5c5),
              activeColor: const Color(0xff2fc5c5),
              inactiveColor: const Color(0xff40455b),
              value: amount,
              min: 1000,
              max: 17000,
              divisions: 160,
              label: amount.toStringAsFixed(0),
              onChanged: (double newAmount) {
                onChanged(newAmount); // هنا بنبلغ الأب بتغيير القيمة
              },
            ),

            /// Min / Max Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Min EGP 1k',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 149, 156),
                    fontSize: 11,
                  ),
                ),
                Text(
                  'Max EGP 17k',
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
