import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/widgets/dashboard.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
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
                                "assets/media/svg/arrowleft.svg")),
                      ),
                      const Text(
                        "Transaction Details",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
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
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage("assets/media/providers/mtn.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: SvgPicture.asset(
                            "assets/media/svg/naira.svg",
                            color: const Color(0xff003333),
                            height: 18,
                          ),
                        ),
                        const Text(
                          "3,500.00",
                          style: TextStyle(
                              color: Color(0xff003333),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppings"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 265,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff026F2E), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Date",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "March 20, 2023 at 22:06",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Beneficiary",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Abdulhaqq Sule",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "+234 800 000 0000",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "NetWork",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "MTN",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Internet Plan",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "2.5GB (2 Day Plan)",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                            Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 67.5,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffBFD7DE), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 23),
                            child: SvgPicture.asset(
                              "assets/media/svg/share.svg",
                              height: 22,
                              width: 22,
                              // ignore: deprecated_member_use
                              color: const Color(0xff003333),
                            ),
                          ),
                          const Text(
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
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/media/svg/save.svg",
                              height: 22,
                              width: 22,
                              // ignore: deprecated_member_use
                              color: const Color(0xff003333),
                            ),
                          ),
                          const Text(
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
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/media/svg/recurring.svg",
                              height: 22,
                              width: 22,
                              // ignore: deprecated_member_use
                              color: const Color(0xff003333),
                            ),
                          ),
                          const Text(
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
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAll(() => DashBoard());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xff026F2E)),
                      ),
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
