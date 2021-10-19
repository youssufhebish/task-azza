
import 'package:flutter/material.dart';

Widget defaultButton({required context, required function, required Color color, required String text,}) => GestureDetector(
  onTap: function,
  child: Container(
    height: 50.0,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(35.0),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  ),
);