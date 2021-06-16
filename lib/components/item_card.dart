import 'package:flutter/material.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/constants.dart';



class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key:key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
              //this is for demo and now we dont need it again , we just need to include cross and main axis
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: product.color,
              ),
              child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image)),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: KDefaultPadding/4),
            child: Text(
              //product is out of date
              product.title,
              style: TextStyle(color: KTextLightColor),
            ),
          ),
          Text("\$${product.price}", style: TextStyle(fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }
}

