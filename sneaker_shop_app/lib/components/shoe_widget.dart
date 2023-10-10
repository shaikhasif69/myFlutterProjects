import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';

class ShoeWidget extends StatelessWidget {
  Shoe shoe;
  ShoeWidget({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: MediaQuery.of(context).size.width * 75,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [Image.asset(shoe.imagePath)],
      ),
    );
  }
}
