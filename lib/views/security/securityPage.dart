import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/TxtFields/customTxtField.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
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
                      "Security",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff026F2E)),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.back();
                    //   },
                    //   child: Container(
                    //     color: Colors.transparent,
                    //     padding: const EdgeInsets.only(
                    //       top: 10,
                    //       left: 10,
                    //       bottom: 10,
                    //     ),
                    //     child: SvgPicture.asset(
                    //       "assets/media/svg/cancel.svg",
                    //       width: 24,
                    //       height: 24,
                    //     ),
                    //   ),
                    // ),
                    SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            padding: const EdgeInsets.only(top: 6.0, bottom: 0),
                            child: Image.asset(
                              "assets/media/default-avatar-md.png",
                              height: 50,
                              scale: 0.5,
                              width: 65,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 23,
                                child: Text(
                                  "Bashir Momoh",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff003333),
                                      fontFamily: "Poppins"),
                                ),
                              ),
                              Text(
                                "bashir@xerobills.com",
                                style: TextStyle(
                                    fontSize: 14,
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
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SvgPicture.asset(
                            "assets/media/svg/dropleft.svg",
                            height: 33,
                            width: 33,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTxtField(
                  hintText: "Enter New Password",
                  obscureText: true,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTxtField(
                  hintText: "Confirm New Password",
                  obscureText: true,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTxtField(
                  hintText: "Enter Existing Password",
                  obscureText: true,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: Size(30.5.w, 6.5.h),
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
                        onPressed: () {
                          Get.back();
                        },
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
