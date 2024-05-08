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
        color: Colors.blue,
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
              color: Colors.white,
            ),
          ),
          Text(
            "    You need to provide the required \n documents for your account activation",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            "Click Here",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decorationColor: Colors.white,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
