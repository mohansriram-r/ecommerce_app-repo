import 'package:ecommerce_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:ecommerce_app/presentation/auth/screens/signup.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is CreateAccountNavigationState) {
          HelperFunction.pushReplacement(context, const SignUp());
        }
      },
      child: Scaffold(
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
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
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
                    context
                        .read<AuthBloc>()
                        .add(CreateAccountNavigationEvent());
                  },
                  child: Text(
                    "don't have a account?",
                    style: TextStyle(color: CColors.secondaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
