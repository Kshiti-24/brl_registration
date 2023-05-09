import 'package:flutter/material.dart';

Widget textFormFieldWidget(
    {required TextEditingController controller,
    required String hintText,
    IconData? icon,
    required String img,
    required TextInputType keyboardType,
    required String? Function(String?) validator}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: 5,
            height: 10,
            child: Image.asset(img.toString()),
          ),
        )),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: validator,
  );
  print(img);
}
