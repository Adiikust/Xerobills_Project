import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xerobills/widgets/rich_text.dart';
import '../../controllers/selectionController.dart';

class ManageProfiles extends StatelessWidget {
  ManageProfiles({super.key});

  final SelectionController controller = Get.put(SelectionController());
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
                  CustomRichText(
                    firstText: "Manage",
                    secondText: "Profiles",
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
                      child: SvgPicture.asset(
                        "assets/media/svg/vector-add.svg",
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
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
                    hintText: "Search for a profile",
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
                height: 15,
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
                            height: 70,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: controller.selectedOptions[index] == true
                                  ? const Color(0xffBFD7DE)
                                  : Colors.white,
                              border:
                                  Border.all(color: const Color(0xffBFD7DE)),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Shadow color
                                  offset: const Offset(
                                      3, 3), // Shadow position (X, Y)
                                  blurRadius: 3, // Blur radius
                                  spreadRadius: 0, // Spread radius
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child:
                                          controller.selectedOptions[index] ==
                                                  true
                                              ? SvgPicture.asset(
                                                  "assets/media/svg/selected.svg",
                                                  height: 13,
                                                  width: 13,
                                                )
                                              : SvgPicture.asset(
                                                  "assets/media/svg/select.svg",
                                                  height: 13,
                                                  width: 13,
                                                ),
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
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff003333),
                                              fontFamily: "Poppins"),
                                        ),
                                        Text(
                                          "Bashir Momoh",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff003333),
                                              fontFamily: "Poppins"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.bottomSheet(
                                      const ManagerProfileBottom(),
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
                                    "assets/media/svg/group-20.svg",
                                    height: 33,
                                    width: 33,
                                  ),
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

class ManagerProfileBottom extends StatelessWidget {
  const ManagerProfileBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    height: 1,
                    width: 70,
                    color: const Color(0xffE0E3E8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Bashir Momoh",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
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
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Buy Airtime",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Internet Data",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Electricity",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Buy Cable Subscription",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const Text(
                "Manage Profile",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Poppins",
                ),
              ),
              const SizedBox(
                height: 26,
              ),
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
                      height: 40,
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
