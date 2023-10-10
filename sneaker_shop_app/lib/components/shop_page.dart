import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/shoe_widget.dart';
import 'package:sneaker_shop_app/models/Shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    print("my size she liked is: ");
    print(MediaQuery.of(context).size.width / 2);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: 'Enter Name',
                        hintText: 'Search Here!'),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.purple,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Everyone flies, some fly longer than others... "),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot Picks!",
                style: TextStyle(color: Colors.purple, fontSize: 24),
              ),
              Text(
                "see all",
                style: TextStyle(color: Colors.blue[700]),
              )
            ],
          ),
        ),
        // Expanded(child: ListView.builder(itemBuilder: (context, index) {
        //   Shoe shoe = Shoe(name: "First Show", imagePath: "assets/shoe1.jpeg", price: 123, description:  "Best Shoe");
        //   return ShoeWidget(shoe:shoe );
        // }))
      ],
    );
  }
}
