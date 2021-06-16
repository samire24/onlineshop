import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/details/details_screen.dart';
import 'package:onlineshop/screens/constants.dart';
import 'package:onlineshop/models/product.dart';
import 'category.dart';
import 'item_card.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: Text("Women",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Category(),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                child: GridView.builder(
                itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: KDefaultPadding,
                      crossAxisSpacing: KDefaultPadding,
                      childAspectRatio: 0.75,
          ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: ()=> Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],)
                    )
                    ),
                  ),

          ),
              )
          )
        ]
    );
  }
}
