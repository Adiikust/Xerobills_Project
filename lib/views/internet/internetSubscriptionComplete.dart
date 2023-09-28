import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/widgets/dashboard.dart';

class InternetSubscriptionCompleted extends StatelessWidget {
  InternetSubscriptionCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                    "Thank You!",
                    style: TextStyle(
                        color: Color(0xff026F2E),
                        letterSpacing: 0.3,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppings"),
                  ),
                  Text(
                    "Your internet subscription",
                    style: TextStyle(
                        color: Color(0xff003333),
                        letterSpacing: 0.3,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  Text(
                    "was successful",
                    style: TextStyle(
                        color: Color(0xff003333),
                        letterSpacing: 0.3,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Image.asset(
                      "assets/media/confetti.png",
                      scale: 0.96,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Summary",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 2.h,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  Container(
                    height: 165,
                    decoration: BoxDecoration(
                      color: Color(0xffBFD7DE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/check-small.svg",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 23,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "2.5GB ",
                                        style: TextStyle(
                                            color: Color(0xff003333),
                                            letterSpacing: 0.5,
                                            fontSize: 18,
                                            fontFamily: "Poppings"),
                                      ),
                                      Text(
                                        "(2 Day Plan)",
                                        style: TextStyle(
                                            color: Color(0xff003333),
                                            letterSpacing: 0.5,
                                            fontSize: 18,
                                            fontFamily: "Poppings"),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "April 09, 2023",
                                  style: TextStyle(
                                      color: Color(0xff003333),
                                      letterSpacing: 0.3,
                                      fontSize: 16,
                                      fontFamily: "Poppings"),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 62,
                          padding: EdgeInsets.only(
                              right: 15, left: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              color: Color(0xff009933),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/media/svg/person-11.svg"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Myself",
                                        style: TextStyle(
                                            fontSize: 14,
                                            letterSpacing: 0.3,
                                            color: Color(0xffffffff),
                                            fontFamily: "Poppins"),
                                      ),
                                      Text(
                                        "0800 000 0000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            letterSpacing: 0.3,
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
                                  Text(
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
                                        color: Color(0xffffffff),
                                      ),
                                      Text(
                                        "1,200",
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
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Transaction Details",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 2.h,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  Container(
                    height: 67.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBFD7DE), width: 1.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Transaction Reference",
                              style: TextStyle(
                                  color: Color(0xff009933),
                                  fontSize: 12,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "1234567890000",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 18,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                  color: Color(0xff009933),
                                  fontSize: 12,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 18,
                                  letterSpacing: 0.3,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppings"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 56,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                  "assets/media/svg/share.svg"),
                            ),
                            Text(
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
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child:
                                  SvgPicture.asset("assets/media/svg/save.svg"),
                            ),
                            Text(
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
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffBFD7DE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                  "assets/media/svg/recurring.svg"),
                            ),
                            Text(
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
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAll(() => DashBoard());
                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff026F2E)),
                      ),
                      child: Center(
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
