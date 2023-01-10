import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test/components/home_body.dart';
import 'package:test/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0, -10), blurRadius: 35, color: primaryColor.withOpacity(0.38)),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/home.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/user.svg")),
            IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/heart.svg"))
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: primaryColor,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
  );
}
