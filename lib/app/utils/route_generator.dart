import 'package:flutter/material.dart';
import 'package:ratata_app/app/pages/pages.dart';

class RouteGenerator {
  static const String rSplash = '/';
  static const String rSignIn = '/signIn';
  static const String rSignUp = '/signUp';
  static const String rHome = '/home';
  static const String rMyProfile = '/myProfile';

  static Route<dynamic>? generateRoute(RouteSettings settings){

    switch (settings.name) {
      case rSplash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case rSignIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case rSignUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case rHome:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case rMyProfile:
        return MaterialPageRoute(builder: (_) => const MyProfilePage());
      default:
        return _erroRoute();
    }
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tela não encontrada!"),
        ),
        body: const Center(
          child: Text("Tela não encontrada"),
        ),
      );
    });
  }

}