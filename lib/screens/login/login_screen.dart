import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/login/widgets/button.dart';
import 'package:deals_dray_clone/screens/login/widgets/tab_bar_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_field_widget.dart';
import 'package:deals_dray_clone/screens/comman_widgets.dart/text_widget.dart';
import 'package:deals_dray_clone/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final ValueNotifier<bool> phone = ValueNotifier(true);

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
                    color: greyColor400,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: phone,
                    builder: (context, value, child) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBarWidget(
                            ontap: () {
                              phone.value = true;
                            },
                            title: "Phone",
                            color: phone.value ? redColor : transparentColor,
                            selectedTextColor:
                                phone.value ? whiteColor : blackColor,
                          ),
                          TabBarWidget(
                            ontap: () {
                              phone.value = false;
                            },
                            color: phone.value ? transparentColor : redColor,
                            selectedTextColor:
                                phone.value ? blackColor : whiteColor,
                            title: "Email",
                          ),
                        ],
                      );
                    },
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
                ValueListenableBuilder(
                  valueListenable: phone,
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        TextWidget(
                          title:
                              "Please provided Your ${phone.value ? "phone Number" : "email Id"} ",
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                        ),
                        TextFieldWidget(
                          margin: const EdgeInsets.all(50),
                          maxLength: phone.value ? 10 : null,
                          lable: phone.value ? "Phone" : "Email",
                          keyboardType: phone.value
                              ? TextInputType.phone
                              : TextInputType.emailAddress,
                        ),
                      ],
                    );
                  },
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
          builder: (context) => OtpScreen(),
        ));
  }
}
