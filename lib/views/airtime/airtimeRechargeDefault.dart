import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/views/airtime/airtimeRechargeSummary.dart';
import '../../controllers/dropDownController.dart';
import '../../widgets/dropdowns/customDropDown.dart';

class AirtimeRechargeDefault extends StatelessWidget {
  AirtimeRechargeDefault({super.key});
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
                      "Recharge Airtime",
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
                  height: 17,
                ),
                const Text(
                  "Select Beneficiary",
                  style: TextStyle(
                      color: Color(0xff003333),
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                GetBuilder<DropdownController>(builder: (dropDownController) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xffBFD7DE),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.15), // Shadow color
                                offset: const Offset(
                                    3, 3), // Shadow position (X, Y)
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
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 0),
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
                                      "Bashir Ibrahim (Personal)",
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
                            InkWell(
                              onTap: () {
                                dropdownController.onTapped();
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: SvgPicture.asset(
                                    "assets/media/svg/dropdown.svg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 19,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/media/providers/mtn.png",
                                      height: 44,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xff026F2E)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                  0.15), // Shadow color
                                              offset: const Offset(3,
                                                  3), // Shadow position (X, Y)
                                              blurRadius: 3, // Blur radius
                                              spreadRadius: 0, // Spread radius
                                            ),
                                          ]),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "MTN Prepaid",
                                            style: TextStyle(
                                                color: Color(0xff003333),
                                                fontSize: 15,
                                                fontFamily: "Poppings"),
                                          ),
                                          SvgPicture.asset(
                                              "assets/media/svg/vector-2.svg")
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
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
                                        color: Colors.black
                                            .withOpacity(0.15), // Shadow color
                                        offset: const Offset(
                                            3, 3), // Shadow position (X, Y)
                                        blurRadius: 3, // Blur radius
                                        spreadRadius: 0, // Spread radius
                                      ),
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: SvgPicture.asset(
                                        "assets/media/svg/naira.svg",
                                        width: 16,
                                        height: 17,
                                        color: const Color(0xff003333),
                                      ),
                                    ),
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width: 1.5,
                                        color: const Color(0xff026F2E)),
                                    Expanded(
                                      child: TextField(
                                        cursorColor: const Color(0xff026F2E),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: "Amount",
                                          hintStyle: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 14,
                                              fontFamily: "Poppings"),
                                          contentPadding: const EdgeInsets.only(
                                              left: 10, right: 5),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          disabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(0),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: dropdownController.isVisible,
                            child: CustomDropDown(),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
                const SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
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
                                        "assets/media/svg/wallet-option.svg"),
                                  ),
                                  const Text(
                                    " Wallet",
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
                                    "35,000.00",
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
                                          "assets/media/svg/selected.svg")
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg"),
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
                                          "assets/media/svg/selected.svg")
                                      : SvgPicture.asset(
                                          "assets/media/svg/select.svg"),
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
                      Get.to(() => const AirtimeRechargeSummary());
                    },
                    child: const Text(
                      "Recharge",
                      style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
