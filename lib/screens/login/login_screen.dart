import 'package:deals_dray_clone/screens/login/widgets/button.dart';
import 'package:deals_dray_clone/screens/login/widgets/tab_bar_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_field_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_widget.dart';
import 'package:deals_dray_clone/screens/registration/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/dealsdray-online.webp"),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBarWidget(
                        title: "Phone",
                        color: Colors.red,
                        selectedTextColor: Colors.white,
                      ),
                      TabBarWidget(
                        title: "Email",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const TextWidget(
                  title: "Glad to see you!",
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                ),
                const SizedBox(height: 20),
                const TextWidget(
                  title: "Please provided Your Phone Number",
                  margin: EdgeInsets.symmetric(horizontal: 50),
                ),
                const TextFieldWidget(
                  margin: EdgeInsets.all(50),
                  maxLength: 10,
                  lable: "Phone",
                  keyboardType: TextInputType.phone,
                ),
                ButtonWidget(
                  ontap: () => ontap(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ontap(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegistrationScreen(),
        ));
  }
}
