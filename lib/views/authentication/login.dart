import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/authentication/createAccount.dart';
import 'package:xerobills/views/authentication/resetPassword.dart';
import 'package:xerobills/widgets/gradient_containor.dart';

import '../../widgets/TxtFields/emailTxtField.dart';
import '../../widgets/TxtFields/passTxtField.dart';
import '../../widgets/dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientContainor(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.bottomCenter, children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 13.h),
                  child: Center(
                    child: Image.asset(
                      "assets/media/xerobills-logo.png",
                      width: 53.w,
                    ),
                  ),
                ),
                const SizedBox(height: 67),
                Center(
                  child: Image.asset(
                    "assets/media/transaction.png",
                    width: 130,
                    height: 130,
                  ),
                ),
              ],
            ),
            Container(
              height: 43.h,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade100,
                      spreadRadius: 3,
                      blurRadius: 5)
                ],
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Manage Account",
                          style: TextStyle(
                              color: Color(0xff003333),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppings"),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 1.3.w),
                            height: 7.h,
                            width: 9.w,
                            decoration: const BoxDecoration(
                                color: Color(0xffE0E3E8),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: SvgPicture.asset(
                                "assets/media/svg/arrowleft.svg",
                                width: 5.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const emailTxtField(),
                    const passTxtField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xff026F2E),
                          ),
                          onPressed: () {
                            Get.to(() => const ResetPassword());
                          },
                          child: const Text(
                            "Reset Password",
                            style: TextStyle(
                                color: Color(0xff002911),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppings"),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fixedSize: const Size(159, 53),
                                backgroundColor: const Color(0xff026F2E)),
                            onPressed: () {
                              Get.to(() => DashBoard());
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                  fontSize: 16, fontFamily: "Poppins"),
                            ))
                      ],
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
                          Get.to(() => const CreateAccount());
                        },
                        child: Text(
                          "Create Account",
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
              ),
            )
          ]),
        ),
      ),
    );
  }
}
