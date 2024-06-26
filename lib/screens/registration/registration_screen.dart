import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_field_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_widget.dart';
import 'package:deals_dray_clone/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  final ValueNotifier<bool> obscureText = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              children: [
                Image.asset("assets/images/dealsdray-online.webp"),
                const TextWidget(
                  title: "Let's Begin!",
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 30),
                const TextWidget(
                  title: "Please enter your credentials to proceed",
                ),
                const SizedBox(height: 20),
                const TextFieldWidget(
                  lable: "Your Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                ValueListenableBuilder(
                  valueListenable: obscureText,
                  builder: (context, value, child) {
                    return TextFieldWidget(
                      lable: "Create Password",
                      obscureText: obscureText.value,
                      suffixIcon: IconButton(
                        onPressed: () {
                          obscureText.value = !obscureText.value;
                        },
                        icon: obscureText.value
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                const TextFieldWidget(lable: "Referral Code (Optional)"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: redColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ));
        },
        child: const Icon(
          Icons.arrow_forward,
          color: whiteColor,
        ),
      ),
    );
  }
}
