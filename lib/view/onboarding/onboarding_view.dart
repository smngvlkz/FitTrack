import 'package:fittrack/view/login/signup_view.dart';

import '../../common_widget/onboarding_page.dart';
import 'package:flutter/material.dart';
import '../../common/colo_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageArr = [
    {
      "title": "Track Your Goal",
      "subtitle":
          "Don't worry about your goal, we will help you to build and track your goals",
      "image": "assets/img/Onboarding_1.png"
    },
    {
      "title": "Get Burn",
      "subtitle": "Let's Keep burning, to achieve your goals",
      "image": "assets/img/Onboarding_2.png"
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us and determine your diet everyday",
      "image": "assets/img/Onboarding_3.png"
    },
    {
      "title": "Improve Your Sleep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good quality can improve your daily mood",
      "image": "assets/img/Onboarding_4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return OnBoardingPage(pObj: pObj);
              }),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: TColor.primaryColor1,
                    value: (selectPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: TColor.primaryColor1,
                      borderRadius: BorderRadius.circular(35)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      color: TColor.white,
                    ),
                    onPressed: () {
                      if (selectPage < 3) {
                        selectPage = selectPage + 1;

                        controller.animateToPage(selectPage,
                            duration: const Duration(microseconds: 600),
                            curve: Curves.bounceInOut);

                        //controller.jumpToPage(selectPage);

                        setState(() {});
                      } else {
                        // Open Welcome Screen
                        print("Open Welcome Screen");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpView()));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
