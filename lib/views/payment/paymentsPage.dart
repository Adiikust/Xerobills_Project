import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/views/payment/recurringPayments.dart';
import 'package:xerobills/views/payment/savedPayments.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 15),
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
                  const Text(
                    "Payments",
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
                height: 24,
              ),
              Material(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                elevation: 4,
                child: InkWell(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(22),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  onTap: () => Get.to(() => const RecurringPayments()),
                  child: Container(
                    height: 122,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Recurring payments",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff026F2E),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Manage your Recurring payments",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          "assets/media/svg/recurring-payments.svg",
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Material(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(22),
                  topRight: Radius.circular(8),
                ),
                elevation: 4,
                child: InkWell(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(22),
                    topRight: Radius.circular(8),
                  ),
                  onTap: () => Get.to(() => const SavedPayments()),
                  child: Container(
                    height: 122,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Saved payments",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff026F2E),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Manage your Recurring payments",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                color: Color(0xff003333),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/media/svg/saved-payments.svg"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
