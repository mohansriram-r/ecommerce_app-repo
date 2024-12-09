import 'package:ecommerce_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:ecommerce_app/presentation/auth/screens/signin.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: CTheme.darkThemeData,
        home: const SignIn(),
      ),
    );
  }
}
