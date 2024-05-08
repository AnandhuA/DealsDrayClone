import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/otp/widgets/otp_text_box_widget.dart';
import 'package:deals_dray_clone/screens/registration/registration_screen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/OI3XD.webp",
                  width: 150,
                ),
                const SizedBox(height: 20),
                const Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "We have send a unique OTP number\nto your mobile +91 123456788000",
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textBoxWidget(context: context, controller: otpController1),
                    textBoxWidget(context: context, controller: otpController2),
                    textBoxWidget(context: context, controller: otpController3),
                    textBoxWidget(context: context, controller: otpController4)
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("01:00"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegistrationScreen(),
                            ));
                      },
                      child: const Text(
                        "SEND AGAIN",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: redColor,
                          decorationColor: redColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
