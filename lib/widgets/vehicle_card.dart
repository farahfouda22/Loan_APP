import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_calculator_app/colors/app_colors.dart';
import 'package:loan_calculator_app/home_screen.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.darkBackground,
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
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.directions_bike,
                      size: 32,
                      color: Color(0xff2fc5c5),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vehicle Details',
                      style: TextStyle(
                        color: Color.fromARGB(255, 147, 149, 156),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Nissan Sunny 2026',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(color: Color.fromARGB(65, 137, 137, 137), thickness: 1),
            SizedBox(height: 15),
            Text(
              'Maximum Funding',
              style: TextStyle(
                color: Color.fromARGB(255, 147, 149, 156),
                fontSize: 15,
              ),
            ),
            Text(
              'EGP 17,484.50',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff2fc5c5),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
