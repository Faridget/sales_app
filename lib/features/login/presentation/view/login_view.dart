import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gap/gap.dart';
import 'package:sales_app/core/functions/validation_input.dart';
import 'package:sales_app/core/utils/txt_styal.dart';
import 'package:sales_app/core/widgets/costom_btn.dart';
import 'package:sales_app/core/widgets/custom_textform_feild.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'Log In',
            
          ),
        ),
        body:   PopScope(
          
          child: AnimationLimiter(
            child:Form(
            
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
              child: ListView(
                children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1000),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      curve: Curves.easeInOutBack,
                      horizontalOffset: 1000.0,
                      verticalOffset: 1000.0,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children: [
                      Image.asset('assets/images/logo.png',height: 150,width: 150,),
                      Text('Welcome Back',style: getTitleStyle(context),),
                      const Gap(10),
                      Text('Sign In With Your Name, And Password ',style: getBodyStyle(context),),
                      const Gap(20),
                      CutomTextformfailed(
                        isNumber: false,
                        vild: (val) {
                          return validationInput(val!, 8, 50, 'email');
                        },
                        //hintText: 'Enter Your Email',
                        icon: Icons.email_outlined,
                        text: 'Email',
                      ),
                      const Gap(10),
                      CutomTextformfailed(
                          ontapicon: () {
                             
                          },
                          isNumber: false,
                          vild: (val) {
                            return validationInput(val!, 5, 20, 'password');
                          },
                          hintText: 'Enter your password',
                          icon: Icons.lock_open_outlined,
                          text: '',
                        ),
                        const Gap(20),
                        CustomBtn(text: 'Sing In', onPressed: (){}, width: 150)




                    ]
              ),
            )) ,
          ),),
    ));
  }
}