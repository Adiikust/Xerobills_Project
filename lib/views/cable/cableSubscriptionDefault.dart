import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/dropDownController.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/views/cable/cableSubscriptionSummary.dart';

class CableSubscriptionDefault extends StatelessWidget {
  CableSubscriptionDefault({super.key});
  final PaymentMethodController controller = Get.put(PaymentMethodController());
  final DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    Text(
                      "Cable Subscription",
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
                  "Select Beneficiary",
                  style: TextStyle(
                      color: Color(0xff003333),
                      letterSpacing: 0.5,
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
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
                                "Personal",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff003333),
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "1234567890",
                                style: TextStyle(
                                    fontSize: 18,
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
                          onTap: () {
                            // Get.defaultDialog(
                            //   content: DropdownButton<String>(
                            //     value: dropdownController.selectedValue,
                            //     items: [
                            //       DropdownMenuItem(
                            //           child: Text('Option 1'), value: 'Option 1'),
                            //       DropdownMenuItem(
                            //           child: Text('Option 2'), value: 'Option 2'),
                            //       DropdownMenuItem(
                            //           child: Text('Option 3'), value: 'Option 3'),
                            //     ],
                            //     onChanged: (String? value) {
                            //       dropdownController.setSelectedValue(value ?? '');
                            //       Get.back();
                            //     },
                            //   ),
                            // );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8),
                            child: SvgPicture.asset(
                                "assets/media/svg/dropdown.svg"),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/media/providers/dstv.svg"),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff026F2E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Yanga",
                        style: TextStyle(
                            color: Color(0xff003333),
                            letterSpacing: 0.5,
                            fontSize: 15,
                            fontFamily: "Poppings"),
                      ),
                      SvgPicture.asset("assets/media/svg/vector-2.svg")
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff026F2E),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: SvgPicture.asset(
                          "assets/media/svg/naira.svg",
                          // ignore: deprecated_member_use
                          color: Color(0xff003333),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height,
                          width: 1.5,
                          color: Color(0xff026F2E)),
                      Expanded(
                        child: TextField(
                          cursorColor: Color(0xff026F2E),
                          keyboardType: TextInputType.number,
                          enabled: false,
                          decoration: InputDecoration(
                            fillColor: Color(0xffF5F5F5),
                            hintText: "2,950.00",
                            hintStyle: TextStyle(
                                color: Color(0xff003333),
                                fontSize: 16,
                                letterSpacing: 0.5,
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  "₦50 fee applies",
                  style: TextStyle(
                      color: Color(0xff009933),
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontFamily: "Poppings"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffBFD7DE),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                        "assets/media/svg/wallet-option.svg"),
                                  ),
                                  Text(
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
                                    color: Color(0xff003333),
                                    height: 12,
                                  ),
                                  Text(
                                    "35,000.00",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                  SizedBox(
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
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: controller.onCardTap,
                        child: Container(
                          height: 56,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffBFD7DE),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                        "assets/media/svg/card-option.svg"),
                                  ),
                                  Text(
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
                                  Text(
                                    "**** 7196",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                  SizedBox(
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
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: Size(55.5.w, 5.5.h),
                        backgroundColor: Color(0xff026F2E)),
                    onPressed: () {
                      Get.to(() => CableSubscriptionSummary());
                    },
                    child: Text(
                      "Get DTSV Yanga",
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
