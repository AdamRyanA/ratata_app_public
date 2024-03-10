import 'package:flutter/material.dart';
import 'package:ratata_app/app/pages/pages.dart';
import 'package:ratata_app/app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ratatá',
      home: SplashPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
