import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/controllers/dropDownController.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/widgets/customPlanOption.dart';

class InternetSubscription extends StatelessWidget {
  InternetSubscription({super.key});
  final PaymentMethodController controller = Get.put(PaymentMethodController());
  final DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 15),
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
                    const Text(
                      "Internet Subscription",
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
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Select Beneficiary",
                  style: TextStyle(
                      color: Color(0xff003333),
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3,
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xffBFD7DE),
                      borderRadius: BorderRadius.circular(9)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 0),
                            child: Image.asset(
                              "assets/media/default-avatar.png",
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
                                "Primary Number",
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
                      GetBuilder<DropdownController>(
                          builder: (dropDownController) {
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8),
                            child: SvgPicture.asset(
                                "assets/media/svg/dropdown.svg"),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/media/providers/mtn.png",
                        height: 45,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff026F2E)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "MTN Network",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            SvgPicture.asset("assets/media/svg/vector-2.svg")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff026F2E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Daily Bundles",
                        style: TextStyle(
                            color: Color(0xff003333),
                            fontSize: 15,
                            fontFamily: "Poppings"),
                      ),
                      SvgPicture.asset("assets/media/svg/vector-2.svg")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                        "Select Plan",
                        style: TextStyle(
                            color: Color(0xff003333),
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
                CustomPlanOption(
                  dataAmount: "40MB",
                  days: 1,
                  price: 50.00,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPlanOption(
                  dataAmount: "100MB",
                  days: 1,
                  price: 100.00,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPlanOption(
                  dataAmount: "1GB",
                  days: 1,
                  price: 300.00,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPlanOption(
                  dataAmount: "2GB",
                  days: 2,
                  price: 500.00,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomPlanOption(
                  dataAmount: "3GB",
                  days: 2,
                  price: 700.00,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
