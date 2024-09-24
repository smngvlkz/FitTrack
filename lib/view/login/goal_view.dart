import 'package:carousel_slider/carousel_slider.dart';
import 'package:fittrack/common/colo_extension.dart';
import 'package:fittrack/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

import '../../common/round_button.dart';

class WhatsYourGoalView extends StatefulWidget {
  const WhatsYourGoalView({super.key});

  @override
  State<WhatsYourGoalView> createState() => _WhatsYourGoalViewState();
}

class _WhatsYourGoalViewState extends State<WhatsYourGoalView> {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  List goalArray = [
    {
      "Image": "assets/img/goal_1.png",
      "Title": "Improve Shape",
      "subtitle": "I want to build muscle and lose fat\nat the same time!"
    },
    {
      "Image": "assets/img/goal_2.png",
      "Title": "Lean & Tone",
      "subtitle": "I'm looking to get lean and toned\nwithout bulking up!"
    },
    {
      "Image": "assets/img/goal_3.png",
      "Title": "Lose Weight",
      "subtitle": "I want to lose weight and get\nin shape!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArray
                    .map((gObj) => Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: TColor.primaryGradient,
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(25)),
                          padding: EdgeInsets.symmetric(
                              vertical: media.width * 0.1, horizontal: 25),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  gObj["Image"].toString(),
                                  width: media.width * 0.5,
                                  fit: BoxFit.fitWidth,
                                ),
                                SizedBox(
                                  height: media.width * 0.1,
                                ),
                                Text(
                                  gObj["Title"].toString(),
                                  style: const TextStyle(
                                      color: TColor.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  width: media.width * 0.1,
                                  height: 1,
                                  color: TColor.white,
                                ),
                                SizedBox(
                                  height: media.width * 0.02,
                                ),
                                Text(
                                  gObj["subtitle"].toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: TColor.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  const Text(
                    "What's Your Goal?",
                    style: TextStyle(
                        color: TColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "It will help us to choose the best\npogram for you!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: TColor.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  RoundButton(
                      title: "Confirm",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomeView()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
