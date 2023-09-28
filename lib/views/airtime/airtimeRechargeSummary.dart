import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/airtime/airtimeRechargeComplete.dart';

class AirtimeRechargeSummary extends StatelessWidget {
  AirtimeRechargeSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
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
                        padding: EdgeInsets.only(
                            top: 10, left: 2, bottom: 10, right: 10),
                        child:
                            SvgPicture.asset("assets/media/svg/arrowleft.svg")),
                  ),
                  Text(
                    "Recharge Summary",
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
              Text(
                "Review and confirm transaction",
                style: TextStyle(
                    color: Color(0xff003333),
                    letterSpacing: 0.5,
                    fontSize: 16,
                    fontFamily: "Poppings"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffBFD7DE),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 0),
                          child: Image.asset(
                            "assets/media/default-avatar.png",
                            height: 60,
                            scale: 0.5,
                            width: 60,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                  fontSize: 18,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                        child: SvgPicture.asset("assets/media/svg/green-x.svg"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 25.h,
                margin: EdgeInsets.only(top: 10),
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
                          "Network",
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
                          "Plan",
                          style: TextStyle(
                              color: Color(0xff026F2E),
                              letterSpacing: 0.5,
                              fontSize: 15,
                              fontFamily: "Poppings"),
                        ),
                        Text(
                          "Prepaid",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Airtime",
                          style: TextStyle(
                              color: Color(0xff026F2E),
                              letterSpacing: 0.5,
                              fontSize: 15,
                              fontFamily: "Poppings"),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: SvgPicture.asset(
                                "assets/media/svg/naira.svg",
                                // ignore: deprecated_member_use
                                color: Color(0xff003333),
                                height: 11,
                              ),
                            ),
                            Text(
                              "3,500.00",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
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
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 50.0),
                        child: Divider(
                          thickness: 1.5,
                          color: Color(0xff026F2E),
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/media/svg/lock.svg"),
                    Expanded(
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
                    fixedSize: Size(55.5.w, 5.5.h),
                    backgroundColor: Color(0xff026F2E)),
                onPressed: () {
                  Get.to(() => AirtimeRechargeComplete());
                },
                child: Text(
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
