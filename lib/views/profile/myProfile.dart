import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/profile/myProfilePersonalUpdate.dart';
import 'package:xerobills/widgets/TxtFields/customTxtField.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //heading
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
                          "My Profile",
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
                    //body
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: const Color(0xffBFD7DE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 0),
                                child: Image.asset(
                                  "assets/media/default-avatar-md.png",
                                  height: 65,
                                  scale: 0.5,
                                  width: 65,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                            onTap: () {
                              Get.to(() => const MyProfilePersonalUpdate());
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: SvgPicture.asset(
                                  "assets/media/svg/dropleft.svg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                          fontSize: 16,
                          letterSpacing: 0.5,
                          fontFamily: "Poppings"),
                    ),
                    CustomTxtField(
                      hintText: "Alternate Phone Number",
                      obscureText: false,
                      topPAdding: 1.3.h,
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          letterSpacing: 0.5,
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
                          fontSize: 16,
                          letterSpacing: 0.5,
                          fontFamily: "Poppings"),
                    ),
                    CustomTxtField(
                      hintText: "Meter Number",
                      obscureText: false,
                      topPAdding: 1.3.h,
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          letterSpacing: 0.5,
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
                          fontSize: 16,
                          letterSpacing: 0.5,
                          fontFamily: "Poppings"),
                    ),
                    CustomTxtField(
                      hintText: "GOTV Decoder Number",
                      obscureText: false,
                      topPAdding: 1.3.h,
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                          letterSpacing: 0.5,
                          fontFamily: "Poppings"),
                    ),
                  ],
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
                    const SizedBox(
                      height: 20,
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
