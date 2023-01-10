import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:flutter_svg/svg.dart';

class DetailsBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithIcons(),
          TitleWithPrice(),
          SizedBox(height: defaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: MaterialButton(
                  color: primaryColor,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40)
                    )
                  ),
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: MaterialButton(
                    // color: ,
                    onPressed: (){},
                    child: Text('Description', style: TextStyle(fontSize: 16),),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Sofia\n", style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: textColor,fontWeight: FontWeight.bold
                  )),
                  TextSpan(text: "Russia", style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.w300
                  ))
                ]
              )
          ),
          Spacer(),
          Text("\$400", style: Theme.of(context).textTheme.headline5?.copyWith(
            color: primaryColor
          ),)
        ],
      ),
    );
  }
}

class ImageWithIcons extends StatelessWidget {
  const ImageWithIcons({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding*3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding*3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(30),
                          //   color: primaryColor.withOpacity(0.50)
                          // ),
                          // color: primaryColor,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                              onPressed: (){
                            Navigator.pop(context);
                          }, icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                        ),
                      ),
                      Spacer(),

                      IconCard(icon: "assets/icons/heart.svg"),
                      IconCard(icon: "assets/icons/sun.svg"),
                      IconCard(icon: "assets/icons/flower.svg"),
                      IconCard(icon: "assets/icons/filter.svg"),
                    ],
                  ),
                )
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                    blurRadius: 60,
                    color: primaryColor.withOpacity(0.29)
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png")
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.023),
      padding: EdgeInsets.all(defaultPadding/2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(offset: Offset(0, 15), blurRadius: 22, color: primaryColor.withOpacity(0.26)),
          BoxShadow(offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
        ],
      ),
      child: SvgPicture.asset("$icon"),
    );
  }
}