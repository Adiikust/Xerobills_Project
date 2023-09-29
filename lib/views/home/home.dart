import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/drawerController.dart';
import 'package:xerobills/views/airtime/airtimeRechargeDefault.dart';
import 'package:xerobills/views/beneficiary/beneficiaries.dart';
import 'package:xerobills/views/cable/cableSubscriptionDefault.dart';
import 'package:xerobills/views/electricity/electricityBillDefault.dart';
import 'package:xerobills/views/notification/notificationPage.dart';
import 'package:xerobills/views/transactions/transactionPage.dart';
import 'package:xerobills/widgets/tiles/myRecentsListTile.dart';
import 'package:xerobills/widgets/quickactions/quickActionButton.dart';

import '../internet/internetSubscriptionDefault.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final DrawersController controller = Get.put(DrawersController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leadingWidth: 0,
          title: Row(
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
                        "assets/media/default-avatar.png",
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
                          fontSize: 4.4.w,
                          fontFamily: "Poppings"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(() => const NotificationPage());
              },
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.only(
                    top: 10, left: 10, bottom: 10, right: 2),
                child: SvgPicture.asset(
                  "assets/media/svg/clarity-notification-line.svg",
                  height: 22,
                  width: 22,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Column(
                        children: [
                          //heading
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Row(
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         GestureDetector(
                          //           onTap: () {
                          //             controller.openDrawer();
                          //           },
                          //           child: Padding(
                          //             padding: const EdgeInsets.only(top: 10.0),
                          //             child: Image.asset(
                          //               "assets/media/default-avatar.png",
                          //               height: 50,
                          //               width: 50,
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: Text(
                          //             "Bashir",
                          //             style: TextStyle(
                          //                 color: const Color(0xff003333),
                          //                 fontSize: 4.4.w,
                          //                 fontFamily: "Poppings"),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //     GestureDetector(
                          //       onTap: () {
                          //         Get.to(() => const NotificationPage());
                          //       },
                          //       child: Container(
                          //         color: Colors.transparent,
                          //         padding: const EdgeInsets.only(
                          //             top: 10, left: 10, bottom: 10, right: 2),
                          //         child: SvgPicture.asset(
                          //           "assets/media/svg/clarity-notification-line.svg",
                          //           height: 22,
                          //           width: 22,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(
                            height: 10,
                          ),
                          //balance card
                          Container(
                            height: 123,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.only(top: 15, left: 25),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(37),
                                  bottomLeft: Radius.circular(37),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/media/avatar-base-card.png"),
                              ),
                            ),
                            child: //wallet balance
                                Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Your wallet balance is",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppings"),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/media/svg/naira.svg",
                                      height: 15,
                                      width: 15,
                                    ),
                                    const Text(
                                      " 65,050.00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppings"),
                                    ),
                                  ],
                                ),
                                //fund wallet button
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppings"),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 30,
                          ),

                          //quick actions
                        ],
                      ),
                    ),
                    //personal dropdown
                    Positioned(
                      bottom: 0,
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
                          width: 74.w,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Personal",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: "Poppings"),
                              ),
                              SvgPicture.asset("assets/media/svg/vector-2.svg")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 27),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              quickActionButton(
                                onTap: () {
                                  Get.to(() => AirtimeRechargeDefault());
                                },
                                svgUrl: "assets/media/svg/vector-3.svg",
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
                                svgUrl: "assets/media/svg/vector-5.svg",
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
                                svgUrl: "assets/media/svg/vector-4.svg",
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
                                svgUrl: "assets/media/svg/vector-6.svg",
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
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 2,
                                    width: 25.w,
                                    color: const Color(0xff026F2E),
                                  ),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(25),
                                    onTap: () {
                                      Get.to(() => const Beneficiaries());
                                    },
                                    child: Material(
                                      elevation: 4,
                                      shape: const CircleBorder(),
                                      child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor:
                                              const Color(0xff009933),
                                          child: Image.asset(
                                            "assets/media/vector-7.png",
                                            height: 21,
                                            width: 21,
                                          )),
                                    ),
                                  ),
                                  Container(
                                    width: 15,
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                              // right: 0.0,
                              top: 60,
                              child: Text(
                                "Beneficiaries",
                                style: TextStyle(
                                    color: Color(0xff2FB73B),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
                                      child: SvgPicture.asset(
                                        "assets/media/svg/vector-8.svg",
                                        height: 21,
                                        width: 21,
                                      ),
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
                                    fontSize: 15,
                                    fontFamily: "Poppings"),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 23),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, bottom: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recent Bill Payments",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w100),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => const TransactionPage());
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xff026F2E),
                            ),
                            child: const Text(
                              "View all",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontFamily: "Poppins"),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return MyRecentsListTile(
                          imageUrl: "assets/media/providers/mtn.png",
                          amount: "10,200",
                          desc: "MTN Airtime",
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// const Text.rich(
// TextSpan(
// text: "Recent ",
// style: TextStyle(
// color: Colors.black,
// fontFamily: "Poppins",
// fontWeight: FontWeight.w100),
// children: [
// TextSpan(
// text: "Bill Payments",
// style: TextStyle(
// color: Colors.black,
// fontFamily: "Poppins"),
// ),
// ],
// ),
// ),
