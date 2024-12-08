import 'package:ecommerce_app/presentation/auth/screens/signin.dart';
import 'package:ecommerce_app/presentation/splash/bloc/splash_bloc.dart';
import 'package:ecommerce_app/utils/constants/assets_strings.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplasCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SignIn(),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: CColors.primarayColor,
        body: Center(
          child: SvgPicture.asset(
            CIcons.logo,
            color: CColors.blueColor,
          ),
        ),
      ),
    );
  }
}
