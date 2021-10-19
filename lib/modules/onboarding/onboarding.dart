
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/cache_helper.dart';
import 'package:task/component/color.dart';
import 'package:task/component/widget/arabic_navigator.dart';
import 'package:task/component/widget/default_button.dart';
import 'package:task/modules/login/login_screen.dart';
import 'package:task/modules/onboarding/onboarding_component.dart';

int i = 0;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    PageController boardingController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          if(i != 2) TextButton(
            onPressed: () {
              setState(() {
                arabicNavigator(context: context, screen: const LoginScreen(),);
                CacheHelper.saveData(key: 'start', value: 1);
              });
            },
            child: const Text(
              'تخطي',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0,),
            OnBoardingPageView(controller: boardingController, function: (index){
              setState(() {
                setState(() {
                  i = index;
                  print(i);
                });
              });
            },),
            const SizedBox(
              height: 25.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      onDotClicked: (index) {
                        setState(() {
                          i = index;
                          print(i);
                        });
                        boardingController.animateToPage(
                          index,
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.linearToEaseOut,
                        );
                      },
                      controller: boardingController,
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 10.0,
                          dotWidth: 10.0,
                          activeDotColor: baseColor,
                          dotColor: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            if (i == 2)
              defaultButton(
                context: context,
                function: () {
                  setState(() {
                    arabicNavigator(context: context, screen: const LoginScreen(),);
                    CacheHelper.saveData(key: 'start', value: 1);
                  });
                },
                text: 'ابدأ الآن',
                color: secondColor,
              ),
          ],
        ),
      ),
    );
  }
}
