import 'dart:async';

import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         "assets/images/410x272-FEAT-hompage-ARIA-sponsored.jpg",
          //       ),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(100),
                ),
              ),
              child: Image.asset("assets/images/dealsdray-online.webp"),
            ),
          )
        ],
      ),
    );
  }
}
