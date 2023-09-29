import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/widgets/dashboard.dart';

class InternetSubscriptionCompleted extends StatelessWidget {
  const InternetSubscriptionCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 17, right: 25, left: 25, bottom: 10),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const Text(
                    "Thank You!",
                    style: TextStyle(
                        color: Color(0xff026F2E),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppings"),
                  ),
                  const Text(
                    "Your internet subscription",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  const Text(
                    "was successful",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/media/confetti.png",
                    height: 102,
                    width: 102,
                    scale: 0.96,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Summary",
                    style: TextStyle(
                        color: const Color(0xff003333),
                        fontSize: 2.h,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 165,
                    decoration: BoxDecoration(
                        color: const Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            offset:
                                const Offset(3, 3), // Shadow position (X, Y)
                            blurRadius: 3, // Blur radius
                            spreadRadius: 0, // Spread radius
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/check-small.svg",
                              height: 26,
                              width: 26,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 23,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "2.5GB ",
                                        style: TextStyle(
                                            color: Color(0xff003333),
                                            fontSize: 16,
                                            fontFamily: "Poppings"),
                                      ),
                                      Text(
                                        "(2 Day Plan)",
                                        style: TextStyle(
                                            color: Color(0xff003333),
                                            fontSize: 16,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                                const Text(
                                  "April 09, 2023",
                                  style: TextStyle(
                                      color: Color(0xff003333),
                                      fontSize: 16,
                                      fontFamily: "Poppings"),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 62,
                          padding: const EdgeInsets.only(
                              right: 7, left: 7, top: 5, bottom: 8),
                          decoration: BoxDecoration(
                              color: const Color(0xff009933),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Shadow color
                                  offset: const Offset(
                                      3, 3), // Shadow position (X, Y)
                                  blurRadius: 3, // Blur radius
                                  spreadRadius: 0, // Spread radius
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/media/svg/person-11.svg",
                                    height: 26,
                                    width: 26,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Myself",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffffffff),
                                            fontFamily: "Poppins"),
                                      ),
                                      Text(
                                        "0800 000 0000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffffffff),
                                            fontFamily: "Poppins"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Amount",
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppings"),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/media/svg/naira.svg",
                                        height: 11,
                                        width: 11,
                                        // ignore: deprecated_member_use
                                        color: const Color(0xffffffff),
                                      ),
                                      const Text(
                                        " 1,200",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.5,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Poppings"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Transaction Details",
                    style: TextStyle(
                        color: const Color(0xff003333),
                        fontSize: 2.h,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  Container(
                    height: 67.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xffBFD7DE), width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            offset:
                                const Offset(3, 3), // Shadow position (X, Y)
                            blurRadius: 3, // Blur radius
                            spreadRadius: 0, // Spread radius
                          ),
                        ]),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Transaction Reference",
                              style: TextStyle(
                                  color: Color(0xff009933),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "1234567890000",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                  color: Color(0xff009933),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                "assets/media/svg/share.svg",
                                height: 22,
                                width: 22,
                              ),
                            ),
                            const Text(
                              "Share Receipt",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                "assets/media/svg/save.svg",
                                height: 22,
                                width: 22,
                              ),
                            ),
                            const Text(
                              "Save Payment",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                "assets/media/svg/recurring.svg",
                                height: 22,
                                width: 22,
                              ),
                            ),
                            const Text(
                              "Set as Recurring Payment",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAll(() => DashBoard());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xff026F2E),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                              offset:
                                  const Offset(3, 3), // Shadow position (X, Y)
                              blurRadius: 3, // Blur radius
                              spreadRadius: 0, // Spread radius
                            ),
                          ]),
                      child: const Center(
                        child: Text(
                          "Go Home",
                          style: TextStyle(
                              color: Color(0xff003333),
                              letterSpacing: 0.3,
                              fontSize: 15,
                              fontFamily: "Poppings"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
