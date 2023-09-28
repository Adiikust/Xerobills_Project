import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/controllers/alertSettingsController.dart';

class AlertSettingsPage extends StatelessWidget {
  AlertSettingsPage({super.key});

  final AlertSettingsController controller = Get.put(AlertSettingsController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AlertSettingsController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(right: 25, left: 25, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.only(
                              top: 10, left: 2, bottom: 10, right: 10),
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    Text(
                      "Alert Settings",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xff026F2E)),
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Customize notifications",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 22,
                    color: Color(0xff003333),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      controller.onEmailTapped();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email notification",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xff003333),
                              ),
                            ),
                            Text(
                              "Get notified in your inbox",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        controller.emailSelected
                            ? SvgPicture.asset("assets/media/svg/toggle-on.svg")
                            : SvgPicture.asset(
                                "assets/media/svg/toggle-off.svg")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      controller.onSMSTapped();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SMS notification",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xff003333),
                              ),
                            ),
                            Text(
                              "Get notified through short message",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        controller.smsSelected
                            ? SvgPicture.asset("assets/media/svg/toggle-on.svg")
                            : SvgPicture.asset(
                                "assets/media/svg/toggle-off.svg")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      controller.onPushTapped();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Push notification",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xff003333),
                              ),
                            ),
                            Text(
                              "Get notified in app",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        controller.pushSelected
                            ? SvgPicture.asset("assets/media/svg/toggle-on.svg")
                            : SvgPicture.asset(
                                "assets/media/svg/toggle-off.svg")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      controller.onProductTapped();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product news",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Color(0xff003333),
                              ),
                            ),
                            Text(
                              "Get notified in your inbox",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        controller.productSelected
                            ? SvgPicture.asset("assets/media/svg/toggle-on.svg")
                            : SvgPicture.asset(
                                "assets/media/svg/toggle-off.svg")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
