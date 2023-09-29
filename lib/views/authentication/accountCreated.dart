import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/widgets/dashboard.dart';
import 'package:xerobills/widgets/gradient_containor.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientContainor(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/media/svg/success.svg",
                  height: 18.h,
                ),
                const Text(
                  "Hurray!",
                  style: TextStyle(
                      color: Color(0xff003333),
                      letterSpacing: 0.3,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Your account was",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff003333),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppings"),
                ),
                const Text(
                  "created successfully",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff003333),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppings"),
                ),
                SizedBox(
                  height: 5.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(270, 53),
                      backgroundColor: const Color(0xff026F2E)),
                  onPressed: () {
                    Get.offAll(() => DashBoard());
                  },
                  child: const Text(
                    "Proceed",
                    style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
