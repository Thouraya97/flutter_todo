import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'TextFieldWidget.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.asset("assets/minecraft.jpg"),
            const SizedBox(
              height: 80,
            ),
            const TextFieldWidget(hint: "Email"),
            const TextFieldWidget(hint: "Mot de passe"),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(children: [
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blue),
                      onPressed: () {},
                      child: const Text("Login")),
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: const Text("Sign Up")),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 40, left: 100),
                  child: Row(
                    children: const [
                      Text("Mot de passe oublié ?"),
                      InkWell(
                        child: Text(
                          "Cliquez ici",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
