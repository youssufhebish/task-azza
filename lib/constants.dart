
import 'package:flutter/material.dart';
import 'package:task/cache_helper.dart';
import 'modules/onboarding/onboarding.dart';

int startWidget = CacheHelper.getData(key: 'start')?? 0;

Widget widget = const OnBoardingScreen();

// 0 -- onboard
// 1 -- login
// 2 -- home