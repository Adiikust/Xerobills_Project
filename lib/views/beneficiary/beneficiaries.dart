import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/views/beneficiary/addBeneficiary.dart';
import 'package:xerobills/views/beneficiary/updateBeneficiary.dart';
import 'package:xerobills/views/profile/myProfilePersonalUpdate.dart';
import 'package:xerobills/widgets/bottomSheets/viewBeneficiariesOptions.dart';

class Beneficiaries extends StatelessWidget {
  const Beneficiaries({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
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
                        child:
                            SvgPicture.asset("assets/media/svg/arrowleft.svg")),
                  ),
                  const Text(
                    "Beneficiaries",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff026F2E)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const AddBeneficiary());
                    },
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 10,
                      ),
                      child: SvgPicture.asset(
                        "assets/media/svg/vector-add.svg",
                        height: 26,
                        width: 26,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 29),
              Material(
                elevation: 2,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.grey.shade700,
                    suffixIconConstraints:
                        const BoxConstraints(maxWidth: 20, maxHeight: 20),
                    hintText: "Search beneficiary",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 14,
                        fontFamily: "Poppings"),
                    contentPadding: const EdgeInsets.only(left: 29, right: 5),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff026F2E)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff026F2E)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff026F2E)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
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
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
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
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child:
                            SvgPicture.asset("assets/media/svg/dropleft.svg"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.only(
                            right: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => const UpdateBeneficiary());
                                    },
                                    child: SvgPicture.asset(
                                        "assets/media/svg/beneficiary-person.svg"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Abdulhaqq Sule",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff003333),
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Get.bottomSheet(
                                    const ViewBeneficiary(),
                                    backgroundColor:
                                        const Color.fromARGB(255, 27, 67, 28),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                      ),
                                    ),
                                  );
                                },
                                borderRadius: BorderRadius.circular(5),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    "assets/media/svg/beneficiary-more.svg",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
