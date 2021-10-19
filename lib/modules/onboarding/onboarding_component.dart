
import 'package:flutter/material.dart';
import 'package:task/component/widget/onboarding_item.dart';
import 'package:task/model/onboarding_model.dart';

Widget OnBoardingPageView({required controller, required function}) => SizedBox(
  height: 385.0,
  child: PageView.builder(
    itemBuilder: (context, index) =>
        onBoardingItem(
          title: onboardingList[index].title,
          body: onboardingList[index].body,
          image: onboardingList[index].image,
        ),
    onPageChanged: function,
    itemCount: onboardingList.length,
    physics: const BouncingScrollPhysics(),
    controller: controller,
  ),
);