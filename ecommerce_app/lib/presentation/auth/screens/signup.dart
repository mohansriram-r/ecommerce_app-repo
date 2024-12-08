import 'package:ecommerce_app/presentation/auth/screens/enter_passwrod.dart';
import 'package:ecommerce_app/presentation/auth/screens/signin.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      backgroundColor: CColors.primarayColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create account",
                style: TextStyle(color: CColors.secondaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  HelperFunction.push(context, const EnterPassword());
                },
                child: const Text('Conitune'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  HelperFunction.pushReplacement(context, const SignIn());
                },
                child: Text(
                  "do have a account?",
                  style: TextStyle(color: CColors.secondaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
