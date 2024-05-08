import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/circle_widget.dart';
import 'package:flutter/material.dart';

class SessionThree extends StatelessWidget {
  const SessionThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleWidget(
            color: blueColor300,
            icon: Icons.phone_android_outlined,
            title: "Mobile",
          ),
          CircleWidget(
            color: greenColor300,
            icon: Icons.laptop_chromebook,
            title: "Laptop",
          ),
          CircleWidget(
            color: pinkColor300,
            icon: Icons.camera_alt,
            title: "Camera",
          ),
          CircleWidget(
            color: orangeColor300,
            icon: Icons.lightbulb_outline_rounded,
            title: "LED",
          )
        ],
      ),
    );
  }
}
