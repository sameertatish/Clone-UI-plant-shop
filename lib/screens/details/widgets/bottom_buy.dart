// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class BottomBuy extends StatelessWidget {
  const BottomBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtomButon(title: 'Buy Now', color: Theme.of(context).primaryColor),
      ],
    );
  }
}

class ButtomButon extends StatelessWidget {
  const ButtomButon({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 56,
      width: size.width,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
            )),
          ),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
    );
  }
}
