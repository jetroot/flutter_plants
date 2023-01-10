import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:test/screens/Details.dart';


class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlant(size: size, name: "sofia", price: 400, country: 'australia',image: "assets/images/image_1.png",),
          RecommendedPlant(size: size, name: "maria", price: 250, country: 'france',image: "assets/images/image_2.png",),
          RecommendedPlant(size: size, name: "laura", price: 199, country: 'spain',image: "assets/images/image_3.png",),
        ],
      ),
    );
  }
}

class RecommendedPlant extends StatelessWidget {
  RecommendedPlant({
    Key? key,
    required this.name,
    required this.image,
    required this.country,
    required this.price,
    required this.size,

  }) : super(key: key);

  final Size size;
  final String name, image, country;
  final int price;
  int count  = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => DetailsScreen())
        );
      },
      child: Container(
        width: size.width * 0.4,
        margin: EdgeInsets.only(left: defaultPadding, top: defaultPadding/2, bottom: defaultPadding*2.5),
        child: Column(
          children: <Widget>[
            Image.asset("$image"),
            Container(
              padding: EdgeInsets.all(defaultPadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: primaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "$name\n".toUpperCase(),
                                style: Theme.of(context).textTheme.button
                            ),
                            TextSpan(
                                text: "$country".toUpperCase(),
                                style: TextStyle(color: primaryColor.withOpacity(0.5))
                            )
                          ]
                      )
                  ),
                  Spacer(),
                  Text("\$$price", style: Theme.of(context).textTheme.button?.copyWith(color: primaryColor),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
