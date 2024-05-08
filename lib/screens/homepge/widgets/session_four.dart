import 'package:deals_dray_clone/colors/colors.dart';
import 'package:deals_dray_clone/screens/homepge/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class SessionFour extends StatelessWidget {
  const SessionFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: blueColor200,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "EXCLUSIVE FOR YOU",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productsImageList.length,
              itemBuilder: (context, index) {
                return CardWidget(
                  imgUrl: productsImageList[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List<String> productsImageList = [
  "https://img.etimg.com/photo/msid-99080556,imgsize-32858/VivoY56BlackEngine.jpg",
  "https://5.imimg.com/data5/SELLER/Default/2022/4/OV/XU/MN/148217327/oppo-a76-mobile-phone.jpg",
  "https://tiimg.tistatic.com/fp/1/007/574/vivo-mobile-phone-7-38mm-ultra-smooth-body-170g-light-2-5d-adjusted-outline-for-a-great-hold-703.jpg",
  "https://www.khoslaonline.com/wp-content/uploads/2023/10/81JoY4p-ZL._SX679_-300x300.jpg",
  "https://img.etimg.com/thumb/width-640,height-480,imgsize-35708,resizemode-75,msid-98897778/top-trending-products/mobile-phones/6-latest-mobile-phones-with-12gb-ram-in-india-in-2023-starting-at-rs-29999/6-latest-mobile-phones-with-12gb-ram-in-india.jpg",
];
