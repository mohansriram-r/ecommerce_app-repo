import 'package:ecommerce_app/presentation/splash/bloc/splash_bloc.dart';
import 'package:ecommerce_app/presentation/splash/screen/splash.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplasCubit()..appStrated(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: CTheme.darkThemeData,
        home: const SplashScreen(),
      ),
    );
  }
}
