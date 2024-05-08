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
      color: Colors.blue.shade200,
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
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CardWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
