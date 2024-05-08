import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class SessionTwo extends StatelessWidget {
  const SessionTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 150,
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "KYC Pending",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: whiteColor,
            ),
          ),
          Text(
            "    You need to provide the required \n documents for your account activation",
            style: TextStyle(color: whiteColor),
          ),
          SizedBox(height: 20),
          Text(
            "Click Here",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: whiteColor,
              decorationColor: whiteColor,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
