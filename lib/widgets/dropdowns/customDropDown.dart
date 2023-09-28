import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xerobills/controllers/dropDownController.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    super.key,
  });
  final DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropdownController>(
      builder: (dropdownController) {
        return Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 135,
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    onTap: () {
                      dropdownController.selectValue(0);
                      dropdownController.isVisible = false;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          // topLeft: Radius.circular(12),
                          // topRight: Radius.circular(12),
                        ),
                        color: dropdownController.currentIndex == 0
                            ? const Color(0xff026F2E)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Primary Number",
                          style: TextStyle(
                              fontSize: 18,
                              color: dropdownController.currentIndex == 0
                                  ? Colors.white
                                  : const Color(0xff003333),
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      dropdownController.selectValue(1);
                      dropdownController.isVisible = false;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: const Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey),
                        ),
                        color: dropdownController.currentIndex == 1
                            ? const Color(0xff026F2E)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Existing Beneficiary",
                          style: TextStyle(
                              fontSize: 18,
                              color: dropdownController.currentIndex == 1
                                  ? Colors.white
                                  : const Color(0xff003333),
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      dropdownController.selectValue(2);
                      dropdownController.isVisible = false;
                    },
                    borderRadius: const BorderRadius.only(
                      // bottomLeft: Radius.circular(12),
                      // bottomRight: Radius.circular(12),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          // bottomLeft: Radius.circular(12),
                          // bottomRight: Radius.circular(12),
                        ),
                        color: dropdownController.currentIndex == 2
                            ? const Color(0xff026F2E)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "New Beneficiary",
                          style: TextStyle(
                              fontSize: 18,
                              color: dropdownController.currentIndex == 2
                                  ? Colors.white
                                  : const Color(0xff003333),
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

                        // GestureDetector(
                        //   // onTap: () => _controller.changePage(1),
                        //   onTap: () => Get.to(() => const TransactionPage()),
                        //   child: Container(
                        //     color: Colors.transparent,
                        //     padding: const EdgeInsets.only(
                        //         top: 20.0, left: 20.0, right: 20.0, bottom: 0),
                        //     child: Column(
                        //       children: [
                        //         SvgPicture.asset(
                        //           "assets/svg/transac.svg",
                        //           // ignore: deprecated_member_use
                        //           color: _controller.currentIndex == 1
                        //               ? Colors.white
                        //               : Colors.grey,
                        //           height: 25,
                        //           width: 25,
                        //         ),
                        //         Text(
                        //           "Transactions",
                        //           style: TextStyle(
                        //             fontSize: 10,
                        //             color: _controller.currentIndex == 1
                        //                 ? Colors.white
                        //                 : Colors.grey,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
