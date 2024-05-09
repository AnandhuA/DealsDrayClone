import 'package:cached_network_image/cached_network_image.dart';
import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imgUrl;
  const CardWidget({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(8),
      height: 200,
      width: 250,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 330,
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
                ),
              ),
              Positioned(
                top: 3,
                right: 0,
                child: Container(
                  width: 55,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: greenColor,
                  ),
                  child: const Center(
                    child: Text(
                      "32% off",
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Text("Nokia 8.1(iron,64 GB)")
        ],
      ),
    );
  }
}
