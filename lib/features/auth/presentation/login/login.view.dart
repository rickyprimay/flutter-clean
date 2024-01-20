import 'package:flutter/material.dart';
import 'package:flutter_learn/features/auth/presentation/widget/button.login.dart';
import 'package:flutter_learn/features/auth/presentation/widget/form.login.dart';
import 'package:flutter_learn/core/utils/global.colors.dart';

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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Vehiloc',
                    style: TextStyle(
                      color: GlobalColor.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Login ke akun anda',
                  style: TextStyle(
                    color: GlobalColor.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                /// Email Input
                TextFormLogin(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),

                const SizedBox(
                  height: 10,
                ),

                /// Password
                TextFormLogin(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),

                const SizedBox(
                  height: 10,
                ),

                const ButtonGlobal()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
