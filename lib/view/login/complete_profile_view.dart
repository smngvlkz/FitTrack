import 'package:fittrack/view/login/goal_view.dart';
import 'package:fittrack/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../common/round_button.dart';
import '../../common/round_textfield.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController txtDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SafeArea(
              child: Column(
            children: [
              Image.asset(
                "assets/img/complete_profile.png",
                width: media.width,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Text(
                "Complete Your Profile",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Tell us more about you!",
                style: TextStyle(color: TColor.grey, fontSize: 12),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: TColor.lightGrey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                "assets/img/users.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                color: TColor.grey,
                              )),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                items: ["Male", "Female"]
                                    .map((name) => DropdownMenuItem(
                                          value: name,
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                                color: TColor.grey,
                                                fontSize: 16),
                                          ),
                                        ))
                                    .toList(),
                                onChanged: (value) {},
                                isExpanded: true,
                                hint: Text(
                                  "Choose Gender",
                                  style: TextStyle(
                                      color: TColor.grey, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    RoundTextfield(
                      controller: txtDate,
                      hintText: "Date of Birth",
                      icon: "assets/img/calendar.png",
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RoundTextfield(
                            controller: txtDate,
                            hintText: "Your Weight",
                            icon: "assets/img/weight_scale 1.png",
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: TColor.secondaryGradient,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("KG",
                              style:
                                  TextStyle(color: TColor.white, fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RoundTextfield(
                            controller: txtDate,
                            hintText: "Your Height",
                            icon: "assets/img/swap.png",
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: TColor.secondaryGradient,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("CM",
                              style:
                                  TextStyle(color: TColor.white, fontSize: 12)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    RoundButton(
                        title: "Next >",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WhatsYourGoalView()));
                        }),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
