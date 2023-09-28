import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/drawerController.dart';
import 'package:xerobills/views/airtime/airtimeRechargeDefault.dart';
import 'package:xerobills/views/cable/cableSubscriptionDefault.dart';
import 'package:xerobills/views/electricity/electricityBillDefault.dart';
import 'package:xerobills/views/notification/notificationPage.dart';
import 'package:xerobills/widgets/quickactions/quickActionButton.dart';
import 'package:xerobills/widgets/tiles/myRecentsListTile.dart';

import '../internet/internetSubscriptionDefault.dart';

class HomePageV2 extends StatelessWidget {
  //const HomePage({super.key});
  final DrawersController controller = Get.put(DrawersController());

   HomePageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.openDrawer();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Image.asset(
                                    "assets/images/default-avatar-2 1.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Bashir",
                                  style: TextStyle(
                                      color: const Color(0xff003333),
                                      letterSpacing: 0.5,
                                      fontSize: 2.3.h,
                                      fontFamily: "Poppings"),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const NotificationPage());
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10, right: 2),
                              child: SvgPicture.asset(
                                  "assets/svg/clarity_notification-line.svg"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 123,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(37),
                                    bottomLeft: Radius.circular(37),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/avatar-base-card.png"))),
                          ),
                          Positioned(
                            left: 23,
                            top: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Your wallet balance is",
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Poppings"),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/svg/naira.svg"),
                                    const Text(
                                      "65,050.00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 0.5,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Poppings"),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 4,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.5),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      fixedSize: const Size(100, 30),
                                      backgroundColor: const Color(0xff026F2E)),
                                  onPressed: () {},
                                  child: const Text(
                                    "Fund Wallet",
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppings"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              quickActionButton(
                                onTap: () {
                                  Get.to(() => AirtimeRechargeDefault());
                                },
                                svgUrl: "assets/svg/Vector3.svg",
                                actionText: "Airtime",
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              quickActionButton(
                                onTap: () {
                                  Get.to(() => ElectricityBIllDefault());
                                },
                                svgUrl: "assets/svg/Vector5.svg",
                                actionText: "Electricity",
                                color: const Color(0xffFFF9ED),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              quickActionButton(
                                onTap: () {
                                  Get.to(() => InternetSubscription());
                                },
                                svgUrl: "assets/svg/Vector4.svg",
                                actionText: "Internet",
                                color: const Color(0xffDFE9EA),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              quickActionButton(
                                onTap: () {
                                  Get.to(() => CableSubscriptionDefault());
                                },
                                svgUrl: "assets/svg/Vector6.svg",
                                actionText: "Cable",
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(20)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 180,
                  child: Material(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(10),
                    ),
                    elevation: 3,
                    shadowColor: const Color(0xff009933),
                    color: Colors.white,
                    child: Container(
                      height: 40,
                      width: 70.w,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Zavati Group",
                            style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          ),
                          SvgPicture.asset("assets/svg/Vector2.svg")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //take into context incase of single or multiple beneficiaries
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 2,
                                width: 25.w,
                                color: const Color(0xff026F2E),
                              ),
                              Material(
                                elevation: 4,
                                shape: const CircleBorder(),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xff009933),
                                    child: Image.asset(
                                        "assets/images/person.png")),
                              ),
                              Container(
                                width: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 0.1,
                        top: 60,
                        child: Text(
                          "Beneficiary",
                          style: TextStyle(
                              color: Color(0xff2FB73B),
                              letterSpacing: 0.5,
                              fontSize: 15,
                              fontFamily: "Poppings"),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          children: [
                            Material(
                              elevation: 4,
                              shape: const CircleBorder(),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xff009933),
                                child:
                                    SvgPicture.asset("assets/svg/Vector8.svg"),
                              ),
                            ),
                            Container(
                              height: 2,
                              width: 25.w,
                              color: const Color(0xff026F2E),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        left: 7,
                        top: 60,
                        child: Text(
                          "Offers",
                          style: TextStyle(
                              color: Color(0xff2FB73B),
                              letterSpacing: 0.5,
                              fontSize: 15,
                              fontFamily: "Poppings"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                              text: "Recent ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w100),
                              children: [
                                TextSpan(
                                    text: "Bill Payments",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins"))
                              ]),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "View all",
                            style: TextStyle(
                                color: Color(0xff026F2E),
                                fontFamily: "Poppins"),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return MyRecentsListTile(
                            imageUrl: "assets/images/MTN.png",
                            amount: "10,200.00",
                            desc: "MTN Airtime",
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
