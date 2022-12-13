import 'package:flutter/material.dart';
import 'package:flutter_todo/Views/Widgets/cartTile.dart';

import '../../../Models/GameModel.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  final List<GameModel> games = [
    GameModel("dmc5.jpg", "Devil May Cry 5", 200),
    GameModel("fifa.jpg", "Fifa 22", 220),
    GameModel("minecraft.jpg", "Minecraft", 150),
    GameModel("nfs.jpg", "Need For Speed", 100),
    GameModel("rdr2.jpg", "Red Dead 2", 150),
    GameModel("re8.jpg", "Resident Evil 8", 120)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: ListView.builder(
            itemCount: games.length,
            itemBuilder: (BuildContext context, index) {
              return ListView(
                children: [
                  Text("data"),
                  cartTile(game: games[index]),
                ],
              );
            }));
  }
}
