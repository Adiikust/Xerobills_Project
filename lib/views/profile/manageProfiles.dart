import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/selectionController.dart';

class ManageProfiles extends StatelessWidget {
  ManageProfiles({super.key});

  final SelectionController controller = Get.put(SelectionController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
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
                    "Manage Profiles",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        color: Color(0xff026F2E)),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.back();
                    },
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        bottom: 10,
                      ),
                      child:
                          SvgPicture.asset("assets/media/svg/vector-add.svg"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.3.h),
                child: Material(
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
                      // suffixIconraints:
                      //      Boxraints(maxWidth: 20, maxHeight: 20),
                      hintText: "Search for a profile",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontFamily: "Poppings"),
                      contentPadding: const EdgeInsets.only(left: 29, right: 5),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Color(0xff026F2E)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Color(0xff026F2E)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1.5, color: Color(0xff026F2E)),
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
              ),
              const SizedBox(
                height: 8,
              ),
              GetBuilder<SelectionController>(builder: (controller) {
                return Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            controller.selectOption(index);
                          },
                          child: Container(
                            height: 73,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                                color: controller.selectedOptions[index] == true
                                    ? const Color(0xffBFD7DE)
                                    : Colors.white,
                                border: Border.all(color: const Color(0xffBFD7DE)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: controller
                                                  .selectedOptions[index] ==
                                              true
                                          ? SvgPicture.asset(
                                              "assets/media/svg/selected.svg")
                                          : SvgPicture.asset(
                                              "assets/media/svg/select.svg"),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Personal",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff003333),
                                              fontFamily: "Poppins"),
                                        ),
                                        Text(
                                          "Bashir Momoh",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff003333),
                                              fontFamily: "Poppins"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                  "assets/media/svg/group-20.svg",
                                  height: 33,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
