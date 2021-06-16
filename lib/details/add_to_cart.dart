import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/constants.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key, this.product,
}): super (key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: KDefaultPadding),
            height: 58,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: product.color),
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/add_to_cart.svg",
                color: product.color,
              ),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: product.color,
                onPressed: (){},
                child: Text(
                  "Buy now".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17.0
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
