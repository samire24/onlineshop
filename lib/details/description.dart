import 'package:flutter/material.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/constants.dart';


class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product
}) : super (key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),

    );
  }
}
