import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_todo/GridTileWidget.dart';

import 'GameModel.dart';
import 'cell.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GameModel> games = [
    GameModel("dmc5.jpg", "Devil May Cry 5", 200),
    GameModel("fifa.jpg", "Fifa 22", 220),
    GameModel("minecraft.jpg", "Minecraft", 150),
    GameModel("nfs.jpg", "Need For Speed", 100),
    GameModel("rdr2.jpg", "Red Dead 2", 150),
    GameModel("re8.jpg", "Resident Evil 8", 120)
  ];

  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "G-Store Esprit",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 5.0,
            children: List.generate(games.length, (index) {
              return Center(
                child: GridTileWidget(games[index]),
              );
            })));
  }
}
