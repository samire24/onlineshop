import 'package:flutter/material.dart';
import 'package:onlineshop/screens/constants.dart';




class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildOutlineButton(
          icon: Icons.remove,
          press: (){
            if(numOfItem>1){
              setState(() {
                numOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding/2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        BuildOutlineButton(
          icon: Icons.add,
          press: (){
            setState(() {
              numOfItem++;
            });
          },
        ),

      ],
    );
  }


  SizedBox BuildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}