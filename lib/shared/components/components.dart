import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.orange,
  double height = 40,
  required String text,
  double raduis = 5.0,
  bool isUpperCase = true,
  required VoidCallback function,
}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: color,
      ),
      child: MaterialButton(
        elevation: 10,
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required String? Function(String?)? validate,
  required IconData preffix,
  IconData? suffix,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.6),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.withOpacity(0.8),
            width: 5.0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.white,
            width: 5.0,
          ),
        ),
        prefixIcon: Icon(
          preffix,
          color: Colors.white.withOpacity(0.6),
        ),
        suffixIcon: Icon(
          suffix,
          color: Colors.white.withOpacity(0.6),
        ),
      ),
    );
