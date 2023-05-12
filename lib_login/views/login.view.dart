import 'package:flutter/material.dart';
import 'package:hello/utils/global.colors.dart';
import 'package:hello/views/widgets/button.global.dart';
import 'package:hello/views/widgets/social.login.dart';
import 'package:hello/views/widgets/text.form.global.dart';
class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
                  style: TextStyle(
                color: GlobalColors.mainColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                //Email input
                TextFormGlobal(controller: emailController,
                text: 'Email',
                obscure: false,
                textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),
                //Password Input
                TextFormGlobal(controller: passwordController,
                text: 'Password', 
                textInputType: TextInputType.text, 
                obscure: true,
                ),

                const SizedBox(height: 10),
                const ButtonGlobal(),
                const SizedBox(height: 25),
                SocialLogin(),
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}