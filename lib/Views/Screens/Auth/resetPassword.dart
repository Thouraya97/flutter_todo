import 'package:flutter/material.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({Key? key}) : super(key: key);

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  final formKey = GlobalKey<FormState>();
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reset password"),
        ),
        body: Form(
            child: ListView(children: [
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
                borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
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
                                content: Text(" Password= $password"),
                              );
                            });
                      }
                    },
                    child: const Text("Reset password")),
              ))
        ])));
  }
}
