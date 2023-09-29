import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/TxtFields/emailTxtField.dart';
import 'createAccount.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              const SizedBox(height: 80),
              Center(
                child: Image.asset(
                  "assets/media/reset-password-illustration.png",
                  width: 130,
                  height: 130,
                ),
              ),
            ],
          ),
          Container(
            height: 38.h,
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
                    color: Colors.grey.shade100, spreadRadius: 3, blurRadius: 5)
              ],
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reset Password",
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: const Color(0xff003333),
                            fontSize: 3.h,
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
                  const emailTxtField(),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: const Size(286, 53),
                          backgroundColor: const Color(0xff026F2E)),
                      onPressed: () {},
                      child: const Text(
                        "Reset",
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                      )),
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
    );
  }
}
