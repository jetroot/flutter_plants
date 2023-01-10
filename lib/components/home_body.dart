import 'package:flutter/material.dart';
import 'package:test/Constants.dart';
import 'package:test/components/recommended_plants.dart';
import 'package:test/components/title_with_more.dart';
import 'feature-plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width*0.8);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithBtn(title: "Recommended", btnName: "More",),
          RecomendedPlants(size: size),

          TitleWithBtn(title: "Featured Plants", btnName: "More",),
          MoreFeaturePlants()
        ],
      ),
    );
  }
}



class FeaturePlants extends StatelessWidget {

  const FeaturePlants({
    Key? key,
    required this.image
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: defaultPadding, top: defaultPadding/2, bottom: defaultPadding/2),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("$image")
        )
      ),
    );
  }
}

