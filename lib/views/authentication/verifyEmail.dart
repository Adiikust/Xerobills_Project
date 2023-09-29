import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/authentication/accountCreated.dart';
import 'package:xerobills/widgets/gradient_containor.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //String currentText = "";
    return SafeArea(
      child: GradientContainor(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 17),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.h),
                        child: Image.asset(
                          "assets/media/xerobills-logo.png",
                          width: 48.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    "Verify Email Address",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppings"),
                  ),
                  const Text(
                    "A verification code has been sent to",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppings"),
                  ),
                  const Text(
                    "abdulhaqq@xerobills.com",
                    style: TextStyle(
                        color: Color(0xff003333),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppings"),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff026F2E),
                        ),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            offset:
                                const Offset(3, 3), // Shadow position (X, Y)
                            blurRadius: 3, // Blur radius
                            spreadRadius: 0, // Spread radius
                          ),
                        ]),
                    child: PinCodeTextField(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      appContext: context,
                      length: 6,
                      keyboardType: TextInputType.number,
                      autoDismissKeyboard: true,
                      pinTheme: PinTheme(
                        fieldHeight: 2.5.h,
                        fieldWidth: 5.w,
                        activeColor: Colors.transparent,
                        inactiveColor: Colors.black,
                        selectedColor: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: const Size(270, 50),
                          backgroundColor: const Color(0xff026F2E)),
                      onPressed: () {
                        Get.to(() => const AccountCreated());
                      },
                      child: const Text(
                        "Verify",
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
