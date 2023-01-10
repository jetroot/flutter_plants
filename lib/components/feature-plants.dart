import 'package:flutter/material.dart';

import 'home_body.dart';

class MoreFeaturePlants extends StatelessWidget {
  const MoreFeaturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlants(image: "assets/images/bottom_img_1.png",),
          FeaturePlants(image: "assets/images/bottom_img_2.png",),
        ],
      ),
    );
  }
}