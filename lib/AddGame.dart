import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_todo/TextFieldWidget.dart';

class AddGame extends StatelessWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/minecraft.jpg"),
              const TextFieldWidget(hint: "Username"),
              const TextFieldWidget(hint: "Email"),
              const TextFieldWidget(hint: "Mot de passe"),
              const TextFieldWidget(hint: "Birthday"),
              const TextFieldWidget(hint: "Address de facturation"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("S'inscrire")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Annuler"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
