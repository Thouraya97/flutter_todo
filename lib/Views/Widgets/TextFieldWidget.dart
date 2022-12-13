import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hint;
  final int maxLines;

  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint!,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.5),
          ),
        ),
      ),
    );
  }
}
