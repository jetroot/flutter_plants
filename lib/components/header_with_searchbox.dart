import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),

      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                bottom: defaultPadding * 1.1),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              children: [
                Text("Hi, Sofia",
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: primaryColor.withOpacity(0.23))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: const TextStyle(
                        color: textColor,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(
                          onPressed: () => {print('searching for')},
                          icon: SvgPicture.asset("assets/icons/search.svg"))),
                ),
              ))
        ],
      ),
    );
  }
}
