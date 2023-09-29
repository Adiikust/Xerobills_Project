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
            padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
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
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, bottom: 10, right: 10),
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    const Text(
                      "Alert Settings",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff026F2E)),
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                const Text(
                  "Customize notifications",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003333),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    controller.onEmailTapped();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Email notification",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xff003333),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Get notified in your inbox",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Color(0xff003333),
                            ),
                          ),
                        ],
                      ),
                      controller.emailSelected
                          ? SvgPicture.asset(
                              "assets/media/svg/toggle-on.svg",
                              height: 25,
                              width: 58,
                            )
                          : SvgPicture.asset(
                              "assets/media/svg/toggle-off.svg",
                              height: 25,
                              width: 58,
                            )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    controller.onSMSTapped();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "SMS notification",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff003333),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Get notified through short message",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Color(0xff003333),
                            ),
                          ),
                        ],
                      ),
                      controller.smsSelected
                          ? SvgPicture.asset(
                              "assets/media/svg/toggle-on.svg",
                              height: 25,
                              width: 58,
                            )
                          : SvgPicture.asset(
                              "assets/media/svg/toggle-off.svg",
                              height: 25,
                              width: 58,
                            )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    controller.onPushTapped();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Push notification",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff003333),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Get notified in app",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Color(0xff003333),
                            ),
                          ),
                        ],
                      ),
                      controller.pushSelected
                          ? SvgPicture.asset(
                              "assets/media/svg/toggle-on.svg",
                              height: 25,
                              width: 58,
                            )
                          : SvgPicture.asset(
                              "assets/media/svg/toggle-off.svg",
                              height: 25,
                              width: 58,
                            )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    controller.onProductTapped();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Product news",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff003333),
                            ),
                          ),
                          Text(
                            "Get notified in your inbox",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Color(0xff003333),
                            ),
                          ),
                        ],
                      ),
                      controller.productSelected
                          ? SvgPicture.asset(
                              "assets/media/svg/toggle-on.svg",
                              height: 25,
                              width: 58,
                            )
                          : SvgPicture.asset(
                              "assets/media/svg/toggle-off.svg",
                              height: 25,
                              width: 58,
                            )
                    ],
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
