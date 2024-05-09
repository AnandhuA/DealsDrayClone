import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class BannerImagesWidget extends StatelessWidget {
  const BannerImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.all(20),
        child: CarouselSlider(
          items: List.generate(
            bannerImagesList.length,
            (index) => banner(imgUrl: bannerImagesList[index]),
          ),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
        ));
  }

  Widget banner({required String imgUrl}) {
    return Container(
      width: 400,
      height: 200,
      margin: const EdgeInsets.all(8),
      // decoration: BoxDecoration(
      //   // borderRadius: BorderRadius.circular(10),
      //   // image: DecorationImage(
      //   //   image: CachedNetworkImageProvider(
      //   //     imgUrl,
      //   //   ),
      //   //   fit: BoxFit.fill,
      //   // ),
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: redColor,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: greyColor,
            size: 30,
          ),
          imageUrl: imgUrl,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

List<String> bannerImagesList = [
  "https://img.freepik.com/premium-psd/horizontal-website-banne_451189-110.jpg",
  "https://i.pinimg.com/originals/ca/e7/2c/cae72ce86998abcadd5051acd91a696b.jpg",
  "https://i.pinimg.com/originals/74/e5/62/74e562795e6ac1e3fee61307e09c3040.jpg",
  "https://www.kindpng.com/picc/m/109-1097440_latest-mobile-banner-png-transparent-png.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCFGi2P4f-udTJKagFxza5bv_3Hp8PHvNNnF6AdeGcFA&s"
];
