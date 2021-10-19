import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/component/color.dart';

Widget onBoardingItem({
  required String title,
  required String body,
  required String image,
}) =>
    Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: baseColor,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        Image.asset(
          image,
          height: 205.0,
          fit: BoxFit.fitHeight,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          body,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: baseColor,
            fontSize: 20.0,
          ),
        ),
      ],
    );
