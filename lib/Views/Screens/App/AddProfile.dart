import 'package:flutter/material.dart';
import 'package:flutter_todo/Views/Widgets/TextFieldWidget.dart';

import '../../Widgets/TextFieldWidget.dart';

class AddGame extends StatefulWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  State<AddGame> createState() => _AddGameState();
}

class _AddGameState extends State<AddGame> {
  late String username;
  late String mail;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Image.asset("assets/minecraft.jpg"),
              TextFormField(
                onSaved: (newValue) => username = newValue!,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                },
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: "username",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ),
              TextFormField(
                onSaved: (newValue) {
                  mail = newValue!;
                },
                validator: (value) {
                  RegExp regex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (value!.isEmpty) {
                    return "email cannot be empty";
                  } else if (!regex.hasMatch(value)) {
                    return "Email invalid";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
              const TextFieldWidget(
                hint: "Mot de passe",
                maxLines: 1,
              ),
              const TextFieldWidget(
                hint: "Birthday",
                maxLines: 1,
              ),
              const TextFieldWidget(
                hint: "Address de facturation",
                maxLines: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Info"),
                                  content: Text("Username = $username"),
                                );
                              });
                        }
                      },
                      child: const Text("S'inscrire")),
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
