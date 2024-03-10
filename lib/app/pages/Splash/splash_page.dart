import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratata_app/app/utils/utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  initialLoading() {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.rSignIn, (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    initialLoading();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                ImagesPath.logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
