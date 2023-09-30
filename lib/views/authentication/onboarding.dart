import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/authentication/createAccount.dart';
import 'package:xerobills/views/authentication/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/media/screen-base.png"),
            )),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/media/xerobills-logo.png",
                          width: 53.w,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    top: 150,
                    child: Text(
                      "Bill payments",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Color(0xff002911),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppings"),
                    )),
                const Positioned(
                    top: 190,
                    child: Text(
                      "made easy",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Color(0xff002911),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppings"),
                    )),
                Positioned(
                    child: Image.asset(
                  "assets/media/girl.png",
                  height: 90.h,
                  //width: 100.w,
                )),
                // Positioned(
                //     top: 100.h,
                //     left: 2.w,
                //     child: Text(
                //       "A billing tool you deserve",
                //       style: TextStyle(
                //           color: Color(0xff002911),
                //           fontSize: 13.sp,
                //           fontFamily: "Poppings"),
                //     )),
                // Positioned(
                //     top: 350.h,
                //     left: 27.w,
                //     child: Text(
                //       "and so much more.",
                //       style: TextStyle(
                //           color: Color(0xff002911),
                //           fontSize: 13.sp,
                //           fontFamily: "Poppings"),
                //     )),
                Positioned(
                  bottom: 30.sp,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fixedSize: const Size(222, 53),
                                backgroundColor: const Color(0xff026F2E)),
                            onPressed: () {
                              Get.to(() => const LoginPage());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/media/svg/login-vector.svg"),
                                const Text(
                                  "  Log In",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: "Poppins"),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            height: 39,
                            "assets/media/svg/login-fingerprint.svg",
                            width: 53,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fixedSize: const Size(270, 53),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Get.to(() => const CreateAccount());
                          },
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins",
                                color: Colors.black),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
