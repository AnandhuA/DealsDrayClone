import 'package:deals_dray_clone/screens/comman_widgets.dart/text_field_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Image.asset("assets/images/dealsdray-online.webp"),
              TextWidget(
                title: "Let's Begin!",
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 30),
              TextWidget(title: "Please enter your credentials to proceed"),
              SizedBox(height: 20),
              TextFieldWidget(lable: "Your Email"),
              SizedBox(height: 20),
              TextFieldWidget(lable: "Create Password"),
              SizedBox(height: 20),
              TextFieldWidget(lable: "Referral Code (Optional)")
            ],
          ),
        ),
      ),
    );
  }
}
