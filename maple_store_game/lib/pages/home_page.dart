import 'package:flutter/material.dart';
import 'package:maple_store_game/components/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue[300],
              )),
          Container(
            height: 10,
            color: Colors.green,
          ),
          Expanded(
              child: Container(
            color: Colors.grey[500],
            child: Column(
              children: [
                Text("M A P L E S T O R Y"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(function: () {}, text: "Play"),
                      MyButton(function: () {}, text: "Attack"),
                      MyButton(function: () {}, text: "Left"),
                      MyButton(function: () {}, text: "Jump"),
                      MyButton(function: () {}, text: "Right"),
                    ]),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
