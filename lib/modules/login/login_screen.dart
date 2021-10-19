import 'package:flutter/material.dart';
import 'package:task/cache_helper.dart';
import 'package:task/component/color.dart';
import 'package:task/component/widget/custom_text_field.dart';
import 'package:task/component/widget/default_button.dart';
import 'package:task/modules/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0,),
            Center(child: Image.asset('assets/images/icon.png',
            width: 80.0,)),
            const SizedBox(height: 20.0,),
            Center(
              child: Text(
                'تسجيل دخول',
                style: TextStyle(
                  color: baseColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            customTextField(
              text: 'اسم المستخدم',
              prefix: const Icon(
                Icons.account_circle_rounded,
                color: Colors.grey,
              ),
              suffix: const SizedBox(
                width: 5.0,
              ),
            ),
            const SizedBox(height: 20.0,),
            customTextField(
              text: 'كلمة المرور',
              prefix: const Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              suffix: IconButton(
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
                onPressed: (){},
              ),
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
              height: 40.0,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        if(i == 1){
                          i = 2;
                        } else {
                          i = 1;
                        }
                      });
                    },
                    child: Container(
                      width: 14.0,
                      height: 14.0,
                      decoration: BoxDecoration(
                        color: i ==1? Colors.white : Colors.green,
                        border: Border.all(color: (Colors.grey[300])!, width: 1.0,),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('تذكرني'),
                  ),
                  const Spacer(),
                  TextButton(onPressed: (){
                  }, child:  Text('هل نسيت كلمة المرور؟', style: TextStyle(color: baseColor,),))
                ],
              ),
            ),
            const SizedBox(height: 20.0,),
            defaultButton(context: context, function: (){
              setState(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Directionality(
                      textDirection: TextDirection.rtl,
                      child: HomeScreen(),
                    ),
                  ),
                );
                CacheHelper.saveData(key: 'start', value: i);
                print(i);
              });
                }, color: baseColor, text: 'دخول'),
            const SizedBox(height: 15.0,),
            defaultButton(
              context: context,
              function: () {
              },
              color: secondColor,
              text: 'تسجيل جديد',
            ),
          ],
        ),
      ),
    );
  }
}
