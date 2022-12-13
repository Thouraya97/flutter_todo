import 'package:flutter/material.dart';
import 'package:flutter_todo/Models/GameModel.dart';

class cartTile extends StatelessWidget {
  final GameModel game;
  const cartTile({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text(""),
            ),
            Image.asset(
              "assets/${game.image}",
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                "${game.price}TND",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
