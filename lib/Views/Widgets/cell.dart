import 'package:flutter/material.dart';
import 'package:flutter_todo/Models/GameModel.dart';

class Cell extends StatelessWidget {
  final GameModel game;
  const Cell(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              "assets/${game.image}",
              width: 220,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(game.title),
                  Text(
                    "${game.price}TND",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
