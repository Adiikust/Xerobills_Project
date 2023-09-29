import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LifeStyleEvents extends StatelessWidget {
  const LifeStyleEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
          child: Column(
            children: [
              Row(
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
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Events",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color: Color(0xff003333)),
                      ),
                      Container(
                        color: const Color(0xff009933),
                        width: 57,
                        height: 2.5,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                "assets/media/coming_soon.png",
                height: 218,
                width: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
