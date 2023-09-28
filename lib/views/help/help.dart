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
          padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
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
                        child: SvgPicture.asset("assets/media/svg/arrowleft.svg")),
                  ),
                  const Text(
                    "Help",
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Support",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                  color: Color(0xff003333),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: const Color(0xff419362), width: 1.5),
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
                            SvgPicture.asset("assets/media/svg/faq.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "FAQ",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
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
                            SvgPicture.asset("assets/media/svg/mail.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Contact us",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
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
                            SvgPicture.asset("assets/media/svg/review.svg"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Write a review",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                color: Color(0xff003333),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/media/svg/export.svg"),
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
                  border:
                      Border.all(color: const Color(0xff419362), width: 1.5),
                ),
                height: 67,
                width: 347,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/media/svg/about.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "About",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
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
