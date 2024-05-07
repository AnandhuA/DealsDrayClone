import 'package:deals_dray_clone/screens/homepge/widgets/banner_images.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          const BannerImagesWidget(),
          Container(
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
          ),
        ],
      ),
    );
  }
}
