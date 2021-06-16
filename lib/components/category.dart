import 'package:flutter/material.dart';
import 'package:onlineshop/screens/constants.dart';


// we need stateful widget for this category
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List Categories = ["Handbag","Footwear", "Jewelries", "Dresses"];

  //by default ou selecteditem will be the first one

  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, index)=>buildCategory(index),
        ),
      ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? KTextColor : KTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: KDefaultPadding/4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}