import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplasCubit extends Cubit<SplashState> {
  SplasCubit() : super(DisplaySplash());

  void appStrated() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(UnAuthenticated());
  }
}
