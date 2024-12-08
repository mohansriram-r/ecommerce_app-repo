import 'package:ecommerce_app/presentation/auth/screens/forgot_password.dart';
import 'package:ecommerce_app/presentation/auth/screens/signin.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: CColors.primarayColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign in",
                style: TextStyle(color: CColors.secondaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Conitune'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  HelperFunction.pushReplacement(
                    context,
                    const ForgotPassword(),
                  );
                },
                child: Text(
                  "forgot password",
                  style: TextStyle(color: CColors.secondaryColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  HelperFunction.push(context, const SignIn());
                },
                child: const Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
