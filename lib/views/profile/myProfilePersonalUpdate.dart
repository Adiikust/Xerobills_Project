import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/widgets/TxtFields/customTxtField.dart';
import 'package:xerobills/widgets/bottomSheets/viewBeneficiariesOptions.dart';
import 'package:xerobills/widgets/drop_down_widget.dart';
import 'package:xerobills/widgets/rich_text.dart';

class MyProfilePersonalUpdate extends StatefulWidget {
  const MyProfilePersonalUpdate({super.key});

  @override
  State<MyProfilePersonalUpdate> createState() =>
      _MyProfilePersonalUpdateState();
}

class _MyProfilePersonalUpdateState extends State<MyProfilePersonalUpdate> {
  String dateTime = "Date of Birth";
  String? _selectedGender;
  List<String> gender = [
    "Male",
    "Female",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 17, right: 25, left: 25),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
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
                    CustomRichText(
                      firstText: "My",
                      secondText: "Profile",
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
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
                          const SizedBox(width: 4),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
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
                    ],
                  ),
                ),

                CustomTxtField(
                  hintText: "First Name",
                  obscureText: false,
                  topPAdding: 2.h,
                  hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                      fontFamily: "Poppings"),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTxtField(
                  hintText: "Last Name",
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
                              "Gender",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                          ),
                          GestureDetector(
                              onTap: () async {
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
                              dateTime,
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                          ),
                          GestureDetector(
                              onTap: () async {
                                DateTime? selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                );
                                if (selectedDate != null &&
                                    selectedDate != DateTime.now()) {
                                  setState(() {
                                    dateTime = selectedDate
                                        .toString()
                                        .substring(0, 10);
                                  });
                                }
                              },
                              child: SvgPicture.asset(
                                  "assets/media/svg/calendar.svg"))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
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
                    style: TextStyle(fontSize: 15, fontFamily: "Poppins"),
                  ),
                ),
                const SizedBox(
                  height: 25,
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
      ),
    );
  }
}
