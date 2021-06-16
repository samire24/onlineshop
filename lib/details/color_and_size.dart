import 'package:flutter/material.dart';
import 'package:onlineshop/screens/constants.dart';
import 'package:onlineshop/models/product.dart';

import 'body.dart';



class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key key,
    @required this.product,
}) : super (key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(color: Color(0xFF356C95),
                    isSelected: true,),
                  ColorDot(color: Color(0xFFF8C078),),
                  ColorDot(color: Color(0xFFA29B9B),),
                ],
              ),
            ],
          ),
        ),
        RichText(text:
        TextSpan(
            style: TextStyle(color: KTextLightColor),
            children: [
              TextSpan(text: "Size\n"),
              TextSpan(text: "${product.size} cm",
                  style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold))
            ]
        )
        )
      ],
    );
  }
}



