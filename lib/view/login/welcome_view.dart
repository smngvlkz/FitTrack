import 'package:fittrack/view/main_tab/tab_view.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../common/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: TColor.white,
        body: SafeArea(
            child: Container(
                width: media.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Image.asset(
                      "assets/img/welcome.png",
                      width: media.width * 0.75,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Text(
                      "Welcome Simangaliso!",
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "You are all set now, let's reach your\ngoals",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: TColor.grey, fontSize: 12),
                    ),
                    const Spacer(),
                    RoundButton(
                        title: "Go To Home",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainTabView()));
                        }),
                  ],
                ))));
  }
}
