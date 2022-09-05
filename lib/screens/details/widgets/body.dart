// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'bottom_buy.dart';
import 'images_icons.dart';
import 'title_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagesIcons(),
        TitlePrice(title: 'Angelica', country: 'Russia', price: 440),
        SizedBox(height: kDefaultPadding),
        BottomBuy(),
      ],
    );
  }
}
