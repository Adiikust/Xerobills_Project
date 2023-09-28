import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Notifications",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xff026F2E)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, bottom: 10, right: 2),
                          child:
                              SvgPicture.asset("assets/media/svg/cancel.svg")),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/media/svg/undraw-push-notifications.svg",
                      height: 20.h,
                      width: 20.h,
                    ),
                    const Text(
                      "Stay in the know !",
                      style: TextStyle(
                          color: Color(0xff003333),
                          fontSize: 22,
                          fontFamily: "Poppins"),
                    ),
                    const Text(
                      "Check back later for transaction alerts,",
                      style: TextStyle(
                          color: Color(0xff003333),
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
                    const Text(
                      "and handy tips for keeping your account ",
                      style: TextStyle(
                          color: Color(0xff003333),
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
                    const Text(
                      "in tip top shape.",
                      style: TextStyle(
                          color: Color(0xff003333),
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
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
