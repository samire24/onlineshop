import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/details/add_to_cart.dart';
import 'package:onlineshop/details/counter_with_fav_btn.dart';
import 'package:onlineshop/details/description.dart';
import 'package:onlineshop/details/product_title_with_image.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/constants.dart';

import 'cart_counter.dart';
import 'color_and_size.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // this gives us the total height and width

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height:size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(
                    top: size.height*0.12,
                    left: KDefaultPadding,
                    right: KDefaultPadding,
                  ),
                  //height: 500.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24.0),
                    )
                  ),
                  child: Column(
                    children: [
                     ColorandSize(product: product),
                      SizedBox(height: KDefaultPadding/2),
                      Description(product: product),
                      SizedBox(height: KDefaultPadding/2),
                    CounterWithFavBtn(),
                      SizedBox(height: KDefaultPadding/2),
                      AddToCart(product: product,),

                    ],
                  ),
                ),
            ProductTitleWithImage(product: product)
        ],
    ),
      )
  ]
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key, this.color,
    // isSelected is default false
    this.isSelected = false
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: KDefaultPadding/4,
        right: KDefaultPadding/2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}


