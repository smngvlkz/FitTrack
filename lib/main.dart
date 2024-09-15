import 'package:fittrack/view/login/signup_view.dart';
import 'package:fittrack/view/onboarding/started_view.dart';
import 'package:flutter/material.dart';
import 'common/colo_extension.dart';
import 'view/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitTrack App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const StartedView(),
    );
  }
}
