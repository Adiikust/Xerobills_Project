import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/widgets/drop_down_widget.dart';
import 'package:xerobills/widgets/rich_text.dart';
import '../../widgets/TxtFields/customTxtField.dart';

class AddBeneficiary extends StatefulWidget {
  const AddBeneficiary({super.key});

  @override
  State<AddBeneficiary> createState() => _AddBeneficiaryState();
}

class _AddBeneficiaryState extends State<AddBeneficiary> {
  List<String> distroList = [
    "Distro 1",
    "Distro 2",
    "Distro 3",
    "Distro 4",
    "Distro 5",
  ];

  String selectedDistro = "Select";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    CustomRichText(
                      firstText: "Add",
                      secondText: "Beneficiary",
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.back();
                    //   },
                    //   child: Container(
                    //       color: Colors.transparent,
                    //       padding: const EdgeInsets.only(
                    //         top: 10,
                    //         left: 10,
                    //         bottom: 10,
                    //         right: 2,
                    //       ),
                    //       child: SvgPicture.asset(
                    //         "assets/media/svg/cancel.svg",
                    //         height: 26,
                    //         width: 26,
                    //       )),
                    // ),
                    SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  "Abdulhaqq Sule",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppings",
                  ),
                ),
                const Text(
                  "Add new beneficiary details",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppings",
                  ),
                ),
                const SizedBox(
                  height: 14,
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
                      fontSize: 15,
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
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.3.h),
                  child: Material(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Color(0xff026F2E),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    elevation: 3,
                    color: Colors.white,
                    child: Container(
                      height: 45,
                      width: 70.w,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13.0),
                            child: Text(
                              selectedDistro,
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                          ),
                          GestureDetector(
                              onTap: () async {
                                Get.bottomSheet(
                                  buildContainer(
                                    context: context,
                                    title: "Distro",
                                    actions: distroList,
                                    height: 400,
                                  ),
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
                              child: SvgPicture.asset(
                                  "assets/media/svg/vector-2.svg"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTxtField(
                  hintText: "Meter Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
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
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTxtField(
                  hintText: "GOTV Decoder Number",
                  obscureText: false,
                  topPAdding: 1.3.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
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
                        onPressed: () {},
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

  Container buildContainer({
    required BuildContext context,
    required final String title,
    double? height,
    required final List<String> actions,
  }) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        image: DecorationImage(
            image: AssetImage("assets/media/beneficiary-image.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                child: Container(
                  height: 2,
                  width: 70,
                  color: const Color(0xffE0E3E8),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(
                      "assets/media/svg/beneficiary-cancel.svg",
                      height: 26,
                      width: 26,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: actions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDistro = actions[index].toString();
                          Get.back();
                        });
                      },
                      child: Text(
                        actions[index].toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Spacer(),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 1,
                    color: const Color(0xffE0E3E8),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
