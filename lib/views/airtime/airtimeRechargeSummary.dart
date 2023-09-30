import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/airtime/airtimeRechargeComplete.dart';
import 'package:xerobills/widgets/rich_text.dart';
import 'package:xerobills/widgets/rich_text_two.dart';

class AirtimeRechargeSummary extends StatelessWidget {
  const AirtimeRechargeSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
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
                  CustomRichText(
                    firstText: "Recharge",
                    secondText: "Summary",
                  ),
                  Container(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Review and confirm transaction",
                style: TextStyle(
                    color: Color(0xff003333),
                    fontSize: 16,
                    fontFamily: "Poppings"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      offset: const Offset(3, 3), // Shadow position (X, Y)
                      blurRadius: 3, // Blur radius
                      spreadRadius: 0, // Spread radius
                    ),
                  ],
                  color: const Color(0xffBFD7DE),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 0),
                          child: Image.asset(
                            "assets/media/default-avatar-md.png",
                            height: 50,
                            scale: 0.5,
                            width: 60,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Bashir Momoh",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins"),
                            ),
                            Text(
                              "+234 800 000 0000",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins"),
                            )
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: SvgPicture.asset(
                          "assets/media/svg/green-x.svg",
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 25.h,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: const Color(0xff026F2E), width: 1.2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      offset: const Offset(3, 3), // Shadow position (X, Y)
                      blurRadius: 3, // Blur radius
                      spreadRadius: 0, // Spread radius
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Network",
                          style: TextStyle(
                              color: Color(0xff026F2E),
                              fontSize: 14,
                              fontFamily: "Poppings"),
                        ),
                        Text(
                          "MTN",
                          style: TextStyle(
                              color: Color(0xff003333),
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: "Poppings"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Plan",
                          style: TextStyle(
                              color: Color(0xff026F2E),
                              fontSize: 14,
                              fontFamily: "Poppings"),
                        ),
                        Text(
                          "Prepaid",
                          style: TextStyle(
                              color: Color(0xff003333),
                              fontWeight: FontWeight.w600,
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
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: "Poppings"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Airtime",
                          style: TextStyle(
                              color: Color(0xff026F2E),
                              fontSize: 14,
                              fontFamily: "Poppings"),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/media/svg/naira.svg",
                              // ignore: deprecated_member_use
                              color: const Color(0xff003333),
                              height: 11,
                            ),
                            const Text(
                              " 3,500.00",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: "Poppings"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 50.0),
                        child: Divider(
                          thickness: 1.5,
                          color: Color(0xff026F2E),
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/media/svg/lock.svg"),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Divider(
                          thickness: 1.5,
                          color: Color(0xff026F2E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(30.5.w, 6.5.h),
                    backgroundColor: const Color(0xff026F2E)),
                onPressed: () {
                  Get.to(() => const AirtimeRechargeComplete());
                },
                child: const Text(
                  "Confirm Transaction",
                  style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
