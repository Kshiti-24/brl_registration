import 'package:flutter/material.dart';

Widget textFormFieldWidget(
    {required TextEditingController controller,
    required String hintText,
    required IconData icon,
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
      suffixIcon: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: validator,
  );
}
