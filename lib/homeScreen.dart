import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_todo/cell.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "G-Store Esprit",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: ListView(
        children: const [
          Cell(asset: "dmc5.jpg", title: "Devil May Cry", price: 200),
          Cell(asset: "fifa.jpg", title: "Fifa", price: 200),
          Cell(asset: "minecraft.jpg", title: "Minecraft", price: 00),
          Cell(asset: "nfs.jpg", title: "NFS", price: 200),
          Cell(asset: "rdr2.jpg", title: "RDR2", price: 200),
          Cell(asset: "re8.jpg", title: "RE8", price: 200),
        ],
      ),
    );
  }
}
