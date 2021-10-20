
import 'package:flutter/material.dart';

Widget customTextField({required String text, required Widget prefix, required Widget suffix,}) => Container(
  height: 50.0,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(35.0),
    border: Border.all(color: (Colors.grey[300])!, width: 1.5),
  ),
  child: Row(
    children: [
      const SizedBox(width: 5.0,),
      Expanded(
        child: TextFormField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            hintText: text,
            hintStyle: const TextStyle(color: Colors.grey),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
      const SizedBox(width: 5.0,),
    ],
  ),
);

Widget customTextFieldWithoutPrefix({
  required String text,
  required Widget suffix,
}) => Container(
  height: 45.0,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(35.0),
    border: Border.all(color: (Colors.grey[300])!, width: 1.5),
  ),
  child: TextFormField(
    cursorColor: Colors.grey,
    decoration: InputDecoration(
      suffixIcon: suffix,
      hintText: text,
      hintStyle: const TextStyle(color: Colors.grey),
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
  ),
);