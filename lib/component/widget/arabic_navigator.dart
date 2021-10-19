

import 'package:flutter/material.dart';

Future arabicNavigator({required context, required screen}) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Directionality(
      textDirection: TextDirection.rtl,
      child: screen,
    ),
  ),
);

Future arabicNavigatorReplacement({required context, required screen}) => Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => Directionality(
      textDirection: TextDirection.rtl,
      child: screen,
    ),
  ),
);