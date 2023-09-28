import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/authentication/onboarding.dart';
import 'package:xerobills/views/authentication/verifyEmail.dart';

import '../../widgets/TxtFields/customTxtField.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/media/xerobills-logo.png",
                        width: 48.w,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 1.3.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 1.3.w,
                      ),
                      height: 7.h,
                      width: 9.w,
                      decoration: const BoxDecoration(
                          color: Color(0xffE0E3E8), shape: BoxShape.circle),
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
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                    letterSpacing: 0.5,
                    color: const Color(0xff003333),
                    fontSize: 3.h,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppings"),
              ),
              Text(
                "Pay your bills and so much more.",
                style: TextStyle(
                    color: const Color(0xff003333),
                    fontSize: 2.h,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppings"),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              CustomTxtField(
                hintText: "First Name",
                obscureText: false,
                topPAdding: 2.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              CustomTxtField(
                hintText: "Last Name",
                obscureText: false,
                topPAdding: 1.8.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              CustomTxtField(
                hintText: "Email Address",
                obscureText: false,
                topPAdding: 1.8.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              CustomTxtField(
                hintText: "Phone Number",
                obscureText: false,
                topPAdding: 1.8.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              CustomTxtField(
                hintText: "Password",
                obscureText: false,
                topPAdding: 1.8.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              CustomTxtField(
                hintText: "Confirm Password",
                obscureText: false,
                topPAdding: 1.8.h,
                hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontFamily: "Poppings"),
              ),
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(286, 53),
                      backgroundColor: const Color(0xff026F2E)),
                  onPressed: () {
                    Get.to(() => const VerifyEmailPage());
                  },
                  child: const Text(
                    "Create",
                    style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
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
                    Get.offAll(() => const Onboarding());
                  },
                  child: Text(
                    "Log In",
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
      ),
    );
  }
}
