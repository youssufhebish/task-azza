import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:task/component/color.dart';
import 'package:task/constants.dart';
import 'package:task/modules/login/login_screen.dart';
import 'package:task/modules/onboarding/onboarding.dart';

import 'cache_helper.dart';
import 'modules/home/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  if(startWidget == 0) {
    widget = const OnBoardingScreen();
  }else if(startWidget == 1) {
    widget = const LoginScreen();
  }else {
    widget = const HomeScreen();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: baseColor,
          ),
          elevation: 0.0,
          color: Colors.white,
        ),
        fontFamily: 'IBM'
      ),
      home: SplashScreenView(
        navigateRoute: Directionality(
          textDirection: TextDirection.rtl,
          child: widget,
        ),
        duration: 3500,
        imageSize: 256,
        imageSrc: "assets/images/logo.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}

