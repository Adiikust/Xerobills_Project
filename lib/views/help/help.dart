import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 17, right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        child:
                            SvgPicture.asset("assets/media/svg/arrowleft.svg")),
                  ),
                  const Text(
                    "Help",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff026F2E)),
                  ),
                  Container(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              const Text(
                "Support",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff003333),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xff419362), width: 1),
                ),
                height: 163,
                width: 347,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/faq.svg",
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "FAQ",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff003333),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/media/svg/arrowright.svg"),
                      ],
                    ),
                    const Divider(
                      color: Color(0xff285C3E),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/mail.svg",
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Contact us",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/media/svg/arrowright.svg"),
                      ],
                    ),
                    const Divider(
                      color: Color(0xff285C3E),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/review.svg",
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Write a review",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Color(0xff003333),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          "assets/media/svg/export.svg",
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xff419362), width: 1),
                ),
                height: 67,
                width: 347,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/media/svg/about.svg",
                          height: 26,
                          width: 26,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "About",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            color: Color(0xff003333),
                          ),
                        )
                      ],
                    ),
                    SvgPicture.asset("assets/media/svg/arrowright.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
