import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_todo/GameModel.dart';

class GridTileWidget extends StatelessWidget {
  final GameModel game;
  const GridTileWidget(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                "assets/${game.image}",
                width: 220,
              ),
              Row(
                children: [
                  Text(game.title),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "${game.price}TND",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
