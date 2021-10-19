import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/component/color.dart';
import 'package:task/component/widget/arabic_navigator.dart';
import 'package:task/component/widget/custom_text_field.dart';
import 'package:task/component/widget/default_button.dart';
import 'package:task/modules/login/login_screen.dart';

class RegisterDoneScreen extends StatelessWidget {
  const RegisterDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'تسجيل حساب جديد',
          style: TextStyle(
            color: baseColor,
            fontSize: 14.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/circle.png',
                    width: 145.0,),
                  Image.asset('assets/images/check.png',width: 55.0,),
                ],
              ),
              const SizedBox(height: 30.0,),
              Text('تم تسجيل حسابكم بنجاح',
              style: TextStyle(fontWeight: FontWeight.bold, color: baseColor, fontSize: 18.0),),
              Text('يمكنك الآن تسجيل الدخول إلى حسابكم والبدء بإستخدام خدمات وساطة عقارية',
                textAlign: TextAlign.center,
                style: TextStyle(color: baseColor, fontSize: 17.0),),
              const SizedBox(height: 10.0,),
              defaultButton(context: context, function: (){
                arabicNavigator(context: context, screen: const LoginScreen(),);
              }, color: secondColor, text: 'تسجيل دخول'),
            ],
          ),
        ),
      ),
    );
  }
}
