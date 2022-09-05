// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../../../constants.dart';

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: country,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.w300, fontSize: 20))
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: kPrimaryLightColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
