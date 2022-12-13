import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String username;
  late String password;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: ListView(
            children: [
              Image.asset("assets/minecraft.jpg"),
              const SizedBox(
                height: 80,
              ),
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
                onSaved: (newValue) => password = newValue!,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                },
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: "password",
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(children: [
                  SizedBox(
                    width: 400,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Info"),
                                    content: Text(
                                        "Username = $username \n Password= $password"),
                                  );
                                });
                          }
                        },
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
      ),
    );
  }
}
