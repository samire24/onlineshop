import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';



class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8.0),
          height: 32,
          width: 28,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff6464)
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
