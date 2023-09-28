import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/widgets/dashboard.dart';

class TransactionDetails extends StatelessWidget {
  TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 10),
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
                            padding: EdgeInsets.only(
                                top: 10, left: 2, bottom: 10, right: 10),
                            child: SvgPicture.asset(
                                "assets/media/svg/arrowleft.svg")),
                      ),
                      Text(
                        "Transaction Details",
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
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/media/providers/mtn.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          child: SvgPicture.asset(
                            "assets/media/svg/naira.svg",
                            // ignore: deprecated_member_use
                            color: Color(0xff003333),
                            height: 18,
                          ),
                        ),
                        Text(
                          "3,500.00",
                          style: TextStyle(
                              color: Color(0xff003333),
                              letterSpacing: 0.5,
                              fontSize: 22,
                              fontFamily: "Poppings"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 265,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff026F2E), width: 1.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "March 20, 2023 at 22:06",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Beneficiary",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Abdulhaqq Sule",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "+234 800 000 0000",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "NetWork",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "MTN",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Internet Plan",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "2.5GB (2 Day Plan)",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 23),
                            child: SvgPicture.asset(
                              "assets/media/svg/share.svg",
                              height: 21,
                              width: 18,
                              // ignore: deprecated_member_use
                              color: Color(0xff003333),
                            ),
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff003333),
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/media/svg/save.svg",
                              height: 21,
                              width: 18,
                              // ignore: deprecated_member_use
                              color: Color(0xff003333),
                            ),
                          ),
                          Text(
                            "Save",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff003333),
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/media/svg/recurring.svg",
                              height: 21,
                              width: 18,
                              // ignore: deprecated_member_use
                              color: Color(0xff003333),
                            ),
                          ),
                          Text(
                            "Recurring",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff003333),
                                fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
