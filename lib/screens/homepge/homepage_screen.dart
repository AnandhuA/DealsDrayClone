import 'package:deals_dray_clone/screens/homepge/widgets/banner_images.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/floating_button.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/search_widget.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/session_four.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/session_three.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/session_two.dart';
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
        children: const [
          BannerImagesWidget(),
          SessionTwo(),
          SizedBox(height: 10),
          SessionThree(),
          SizedBox(height: 20),
          SessionFour()
        ],
      ),
      floatingActionButton: const FloatingButtonWidget(),
    );
  }
}
