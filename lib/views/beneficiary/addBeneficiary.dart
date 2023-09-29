import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/TxtFields/customTxtField.dart';

class AddBeneficiary extends StatelessWidget {
  const AddBeneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
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
                      "Add Beneficiary",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xff026F2E)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 10,
                            bottom: 10,
                            right: 2,
                          ),
                          child: SvgPicture.asset(
                            "assets/media/svg/cancel.svg",
                            height: 26,
                            width: 26,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Abdulhaqq Sule",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppings",
                  ),
                ),
                const Text(
                  "Add new beneficiary details",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppings",
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Airtime & Data Number",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color(0xff003333)),
                ),
                CustomTxtField(
                  hintText: "Primary Phone Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Electricity",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color(0xff003333)),
                ),
                CustomTxtField(
                  hintText: "Distro",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                CustomTxtField(
                  hintText: "Meter Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Cable",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color(0xff003333)),
                ),
                CustomTxtField(
                  hintText: "DSTV Decoder Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                CustomTxtField(
                  hintText: "GOTV Decoder Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: Size(30.5.w, 5.5.h),
                          backgroundColor: const Color(0xff026F2E)),
                      onPressed: () {},
                      child: const Text(
                        "Update",
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff026F2E),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              letterSpacing: 0.5,
                              color: const Color(0xff026F2E),
                              fontSize: 2.h,
                              fontFamily: "Poppings"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
