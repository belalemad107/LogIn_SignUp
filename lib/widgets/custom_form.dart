import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm(
      {Key? key,
      required this.text,
       this.hintText,
       this.Password,
       this.error})
      : super(key: key);
  final String text;
  final String? hintText;
  final bool? Password;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          validator: (value) {
            if (value!.isEmpty) {
              return error;
            }
          },
          onSaved: (value) {},
        )
      ],
    );
  }
}
