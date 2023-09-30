import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/help/help.dart';
import 'package:xerobills/views/authentication/onboarding.dart';
import 'package:xerobills/views/profile/myProfile.dart';

import '../../views/settings/alertSettingsPage.dart';
import '../../views/security/securityPage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 7.h,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/media/svg/drawerbg.svg",
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 7.h,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const MyProfile());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                          "assets/media/svg/white-person.svg"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "My Profile",
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 16.5,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const SecurityPage());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                          "assets/media/svg/security.svg"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "Security",
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 16.5,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => AlertSettingsPage());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                          "assets/media/svg/alert.svg"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "Alert Setting",
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 16.5,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                          "assets/media/svg/dark-mode.svg"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "Dark Mode",
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 16.5,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const HelpPage());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                          "assets/media/svg/help.svg"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text(
                                        "Help",
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            fontSize: 16.5,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //header
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        child: SizedBox(
                          height: 210,
                          child: Image.asset(
                            "assets/media/avatar-base-card.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/media/default-avatar-md.png",
                              height: 70,
                            ),
                            const Text(
                              "Bashir Ibrahim",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontSize: 20,
                                  fontFamily: "Poppings"),
                            ),
                            const Text(
                              " 0812 704 6244",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(54.5.w, 5.5.h),
                    backgroundColor: const Color(0xff2FB73B)),
                onPressed: () {
                  Get.offAll(() => const Onboarding(),
                      transition: Transition.fade);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/media/svg/login-vector.svg"),
                    const Text(
                      "  Log Out",
                      style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
