import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ViewBeneficiary extends StatelessWidget {
  const ViewBeneficiary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        image: DecorationImage(
            image: AssetImage("assets/media/beneficiary-image.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    height: 1,
                    width: 70,
                    color: const Color(0xffE0E3E8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Abdulhaqq Sule",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontFamily: "Poppins"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                            "assets/media/svg/beneficiary-cancel.svg"),
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                "Manage Profile",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Airtime",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Internet Data",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Electricity",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Cable Subscription",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 1,
                    color: const Color(0xffE0E3E8),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
