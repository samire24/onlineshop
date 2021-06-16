import 'package:flutter/material.dart';

 class Product {
   final String image, title, description;
   final int price, size, id;
   final Color color;
   Product({
    this.id,
     this.image,
     this.title,
     this.description,
     this.price,
     this.size,
     this.color,
 });

 }
 List products= [
   Product(
     id: 1,
     title:"office code",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFF3D82AE),
     image: "assets/images/bag_1.jpg",),
   Product(
     id: 2,
     title:"bag extraordinaire",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFF989493),
     image: "assets/images/bag_2.jpg",),
   Product(
     id: 3,
     title:"Old fashion",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFFFB7883),
     image: "assets/images/bag_3.png",),
   Product(
     id: 4,
     title:"office code",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFFE6B398),
     image: "assets/images/bag_5.jpg",),
   Product(
     id: 5,
     title:"office code",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFFAEAEAE),
     image: "assets/images/bag_7.jpg",),
   Product(
     id: 6,
     title:"Belt bag",
     size: 12,
     description: dummyText,
     price: 2345,
     color: Color(0xFFD3A984),
     image: "assets/images/bag_8.jpg",),

];

 String dummyText = "Lovely Apple Songs";