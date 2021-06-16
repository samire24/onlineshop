import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop/screens/constants.dart';
import 'package:onlineshop/components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: buildAppBar(),
              body: Body(),
    );
        }
       AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg", color: KTextColor,),
            onPressed: (){}),
        actions: [
          IconButton(icon: SvgPicture.asset("assets/icons/search.svg", color: KTextColor,),
              onPressed: (){}),
          IconButton(icon: SvgPicture.asset("assets/icons/cart.svg", color: KTextColor,),
              onPressed: (){}),
          SizedBox(width: KDefaultPadding / 2,)

        ],
      );

  }
}

