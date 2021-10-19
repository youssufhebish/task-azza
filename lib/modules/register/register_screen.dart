import 'package:flutter/material.dart';
import 'package:task/component/color.dart';
import 'package:task/component/widget/arabic_navigator.dart';
import 'package:task/component/widget/custom_text_field.dart';
import 'package:task/component/widget/default_button.dart';
import 'package:task/modules/register_done/register_done.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/icon.png',
                width: 80.0,),
              ),
              const SizedBox(height: 30.0,),
              customTextFieldWithoutPrefix(text: 'اسم المستخدم', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'رقم الجوال', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'البريد الإلكتروني', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'نوع المستخدم', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'المدينة', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'السجل التجاري', suffix: const SizedBox(width: 20.0,)),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'كلمة المرور', suffix: const Icon(Icons.remove_red_eye, color: Colors.grey, size: 20.0,),),
              const SizedBox(height: 10.0,),
              customTextFieldWithoutPrefix(text: 'تأكيد كلمة المرور', suffix: const Icon(Icons.remove_red_eye, color: Colors.grey, size: 20.0,),),
              const SizedBox(height: 10.0,),
              defaultButton(context: context, function: (){
                arabicNavigator(context: context, screen: const RegisterDoneScreen());
              }, color: secondColor, text: 'تسجيل'),
              const SizedBox(height: 20.0,),
              const Center(
                child: Text(
                  'تسجيلك لدينا يعني موافقتك على',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'شروط الإستخدام وسياسة الخصوصية',
                  style: TextStyle(
                    color: secondColor,
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
