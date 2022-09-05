// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImagesIcons extends StatelessWidget {
  const ImagesIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                        color: kPrimaryLightColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                  ),
                ),
                Spacer(),
                IconCard(icon: 'assets/icons/sun.svg'),
                IconCard(icon: 'assets/icons/icon_2.svg'),
                IconCard(icon: 'assets/icons/icon_3.svg'),
                IconCard(icon: 'assets/icons/icon_4.svg')
              ],
            ),
          )),
          Container(
            width: size.width * 0.75,
            height: size.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Theme.of(context).primaryColor.withOpacity(0.29))
                ],
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
