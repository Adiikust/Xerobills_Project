import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'lifestyleEvents.dart';
import 'lifestyleMovies.dart';

// ignore: must_be_immutable
class LifestylePage extends StatelessWidget {
  LifestylePage({super.key});

  List<Widget> items = [
    GestureDetector(
      onTap: () {
        Get.to(() => const LifeStyleMovies());
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset("assets/media/movies.png"),
          const Positioned(
            left: 15,
            bottom: 15,
            child: Text(
              "Movies",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    ),
    GestureDetector(
      onTap: () {
        Get.to(() => const LifeStyleEvents());
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset("assets/media/events.png"),
          const Positioned(
            left: 15,
            bottom: 15,
            child: Text(
              "Events",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
              child: Column(
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
                              "assets/media/svg/arrowleft.svg",
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                            bottom: 10,
                          ),
                          child: SvgPicture.asset(
                            "assets/media/svg/cancel.svg",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: RichText(
                                    text: const TextSpan(
                                        text: "Choose Your ",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 24,
                                          color: Color(0xff003333),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Lifestyle",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff003333),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              color: const Color(0xff009933),
                              width: 57,
                              height: 2.5,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: items,
              options: CarouselOptions(
                scrollPhysics: const RangeMaintainingScrollPhysics(),
                aspectRatio: 16 / 16,
                viewportFraction: 0.6,
                padEnds: true,
                initialPage: 0,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
