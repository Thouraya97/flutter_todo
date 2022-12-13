import 'package:flutter/material.dart';
import 'package:flutter_todo/Controllers/ApiManager.dart';
import 'package:flutter_todo/Views/Widgets/GridTileWidget.dart';

import '../../../Models/GameModel.dart';
import '../../Widgets/cell.dart';

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
      body:

          /*GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return GridTileWidget(games[index]);
                }))
                */
          ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                return Cell(games[index]);
              }),
    );
  }
}
