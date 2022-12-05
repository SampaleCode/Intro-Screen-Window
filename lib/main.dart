import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';

import 'HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var primaryColor = Color(0xff03DAC5);

    return MaterialApp(
      title: 'Intro Window',
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFE5E5E5),
        dividerColor: Colors.white,
        colorScheme: ColorScheme.light(primary: primaryColor),
      ),
      home: IntroWindow(),
    );
  }
}

class IntroWindow extends StatelessWidget {
  IntroWindow({Key? key}) : super(key: key);

  final List<Introduction> list = [
    Introduction(
        title: 'Presentation',
        subTitle: 'Presentation your Slide',
        imageUrl: 'assets/images/intro1.png'),
    Introduction(
        title: 'Meet the team',
        subTitle: 'Meet the team your new Feedback',
        imageUrl: 'assets/images/intro2.png'),
    Introduction(
        title: 'Intro the night',
        subTitle: 'Intro the night planing',
        imageUrl: 'assets/images/intro3.png'),
    Introduction(
        title: 'Enter',
        subTitle: 'Enter the Application',
        imageUrl: 'assets/images/intro4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const HomePage()));
      },
    );
  }
}
