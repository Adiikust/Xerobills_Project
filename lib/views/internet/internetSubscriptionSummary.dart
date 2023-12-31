import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/views/internet/internetSubscriptionComplete.dart';
import 'package:xerobills/widgets/rich_text.dart';

class InternetSubscriptionSummary extends StatelessWidget {
  InternetSubscriptionSummary({super.key});
  final PaymentMethodController controller = Get.put(PaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    CustomRichText(
                      firstText: "Subscription",
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
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xffBFD7DE),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          offset: const Offset(3, 3), // Shadow position (X, Y)
                          blurRadius: 3, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]),
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
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
                            height: 26,
                            width: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xff026F2E), width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          offset: const Offset(3, 3), // Shadow position (X, Y)
                          blurRadius: 3, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]),
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
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          ),
                          Text(
                            "MTN",
                            style: TextStyle(
                                color: Color(0xff003333),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Internet Plan",
                            style: TextStyle(
                                color: Color(0xff026F2E),
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          ),
                          Row(
                            children: const [
                              Text(
                                "2.5GB",
                                style: TextStyle(
                                    color: Color(0xff003333),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    fontFamily: "Poppings"),
                              ),
                              Text(
                                "(2 Day Plan)",
                                style: TextStyle(
                                    color: Color(0xff003333),
                                    fontSize: 15,
                                    fontFamily: "Poppings"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                color: Color(0xff026F2E),
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          ),
                          Text(
                            "Wallet",
                            style: TextStyle(
                                color: Color(0xff003333),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Subscription Fee",
                            style: TextStyle(
                                color: Color(0xff026F2E),
                                fontSize: 15,
                                fontFamily: "Poppings"),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/media/svg/dark-naira.svg",
                                color: const Color(0xff003333),
                                height: 11,
                              ),
                              const Text(
                                " 3,500.00",
                                style: TextStyle(
                                    color: Color(0xff003333),
                                    fontWeight: FontWeight.w600,
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
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Color(0xff026F2E),
                          ),
                        ),
                      ),
                      Text(
                        "Pay With",
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 15,
                            fontFamily: "Poppings"),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Color(0xff026F2E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GetBuilder<PaymentMethodController>(builder: (controller) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: controller.onWalletTap,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
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
                                        "assets/media/svg/wallet-option.svg"),
                                  ),
                                  const Text(
                                    "Wallet",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/media/svg/dark-naira.svg",
                                    // ignore: deprecated_member_use
                                    color: const Color(0xff003333),
                                    height: 12,
                                  ),
                                  const Text(
                                    " 35,000.00",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  controller.select == true
                                      ? SvgPicture.asset(
                                          "assets/media/svg/selected.svg",
                                          height: 20,
                                          width: 20,
                                        )
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg",
                                          height: 20,
                                          width: 20,
                                        ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: controller.onCardTap,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
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
                                        "assets/media/svg/card-option.svg"),
                                  ),
                                  const Text(
                                    "Card",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "**** 7196",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  controller.selected == true
                                      ? SvgPicture.asset(
                                          "assets/media/svg/selected.svg",
                                          height: 20,
                                          width: 20,
                                        )
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg",
                                          height: 20,
                                          width: 20,
                                        ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: Size(30.5.w, 6.5.h),
                      backgroundColor: const Color(0xff026F2E)),
                  onPressed: () {
                    Get.to(() => const InternetSubscriptionCompleted());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Recharge",
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SvgPicture.asset(
                          "assets/media/svg/naira.svg",
                          height: 13,
                          width: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
