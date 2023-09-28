import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/authentication/accountCreated.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //String currentText = "";
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                          width: 50.w,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Verify Email Address",
                  style: TextStyle(
                      letterSpacing: 0.5,
                      color: const Color(0xff003333),
                      fontSize: 3.h,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppings"),
                ),
                Text(
                  "A verification code has been sent to",
                  style: TextStyle(
                      color: const Color(0xff003333),
                      fontSize: 2.h,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppings"),
                ),
                Text(
                  "abdulhaqq@xerobills.com",
                  style: TextStyle(
                      color: const Color(0xff003333),
                      fontSize: 2.h,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppings"),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 13),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xff026F2E),
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
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
                    onChanged: (value) {
                      // debugPrint(value);
                      // setState(() {
                      //   currentText = value;
                      // });
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
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
    );
  }
}
