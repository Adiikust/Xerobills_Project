import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/dropDownController.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/views/cable/cableSubscriptionSummary.dart';
import 'package:xerobills/widgets/drop_down_widget_two.dart';
import 'package:xerobills/widgets/rich_text_two.dart';

class CableSubscriptionDefault extends StatefulWidget {
  CableSubscriptionDefault({super.key});

  @override
  State<CableSubscriptionDefault> createState() =>
      _CableSubscriptionDefaultState();
}

class _CableSubscriptionDefaultState extends State<CableSubscriptionDefault> {
  final PaymentMethodController controller = Get.put(PaymentMethodController());

  final DropdownController dropdownController = Get.put(DropdownController());
  List<String> dailyBundlesList = [
    "Yanga 1",
    "Yanga 2",
    "Yanga 3",
    "Yanga 4",
    "Yanga 5",
  ];

  String? _selectedDailyBundles;
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
                    CustomRichTextTwo(
                      firstText: "Cable",
                      secondText: "Subscription",
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
                  "Select Beneficiary",
                  style: TextStyle(
                      color: Color(0xff003333),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    ],
                  ),
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
                                "Personal",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff003333),
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "1234567890",
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
                  height: 26,
                ),
                SvgPicture.asset(
                  "assets/media/providers/dstv.svg",
                  height: 23,
                  width: 129,
                ),
                const SizedBox(
                  height: 29,
                ),
                ReusableDropdownContainerTwo(
                  itemList: dailyBundlesList, // Your list of items
                  selectedValue: _selectedDailyBundles, // The selected value
                  onChanged: (newValue) {
                    setState(() {
                      _selectedDailyBundles = newValue;
                      print("Gender ${_selectedDailyBundles.toString()}");
                    });
                  },
                  hintText: "Yanga", // The hint text
                ),
                const SizedBox(
                  height: 11,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xff026F2E),
                    ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset(
                          "assets/media/svg/naira.svg",
                          height: 17,
                          width: 16,
                          color: const Color(0xff003333),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height,
                          width: 1.5,
                          color: const Color(0xff026F2E)),
                      const Expanded(
                        child: TextField(
                          cursorColor: Color(0xff026F2E),
                          keyboardType: TextInputType.number,
                          enabled: false,
                          decoration: InputDecoration(
                            fillColor: Color(0xffF5F5F5),
                            hintText: "2,950.00",
                            hintStyle: TextStyle(
                                color: Color(0xff003333),
                                fontSize: 15,
                                fontFamily: "Poppings"),
                            contentPadding: EdgeInsets.only(left: 10, right: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(10)),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(10)),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const Text(
                  "₦50 fee applies",
                  style: TextStyle(
                      color: Color(0xff009933),
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
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
                        "Pay with",
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
                GetBuilder<PaymentMethodController>(builder: (controller) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: controller.onWalletTap,
                        child: Container(
                          height: 56,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
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
                                      "assets/media/svg/wallet-option.svg",
                                      height: 18,
                                      width: 18,
                                    ),
                                  ),
                                  const Text(
                                    "Wallet",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/media/svg/dark-naira.svg",
                                    color: const Color(0xff003333),
                                    height: 12,
                                  ),
                                  const Text(
                                    " 35,000.00",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  controller.select == true
                                      ? SvgPicture.asset(
                                          "assets/media/svg/selected.svg",
                                          height: 13,
                                          width: 13,
                                        )
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg",
                                          height: 13,
                                          width: 13,
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
                          height: 56,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
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
                                      "assets/media/svg/card-option.svg",
                                      height: 18,
                                      width: 18,
                                    ),
                                  ),
                                  const Text(
                                    "Card",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
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
                                          height: 13,
                                          width: 13,
                                        )
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg",
                                          height: 13,
                                          width: 13,
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
                        fixedSize: Size(55.5.w, 5.5.h),
                        backgroundColor: const Color(0xff026F2E)),
                    onPressed: () {
                      Get.to(() => const CableSubscriptionSummary());
                    },
                    child: const Text(
                      "Get DTSV Yanga",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
