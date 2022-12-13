import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Devil May Cry"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/dmc5.jpg"),
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 50),
              child: SizedBox(
                  width: 400,
                  child: Text(
                      maxLines: 20,
                      "Resident Evil 4 is a 2005 survival horror third-person shooter game developed by Capcom Production Studio 4[1] and published by Capcom. It was originally released for the GameCube on January 11, 2005. Players control U.S. government special agent Leon S. Kennedy, who is sent on a mission to rescue the U.S. president's daughter Ashley Graham, who has been kidnapped by a cult. In rural Spain, Leon fights hordes of villagers infected by a mind-controlling parasite and reunites with the spy Ada Wong.")),
            ),
            const Text(
              "200 TND",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.add_shopping_cart_rounded),
                        Text("Acheter"),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
