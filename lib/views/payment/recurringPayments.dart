import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/widgets/rich_text_two.dart';

class RecurringPayments extends StatelessWidget {
  const RecurringPayments({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    CustomRichTextTwo(
                      firstText: "Recurring",
                      secondText: "Payments",
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TabBar(
                      splashBorderRadius: BorderRadius.circular(10),
                      unselectedLabelColor: const Color(0xffBDBDBD),
                      indicator: BoxDecoration(
                          color: const Color(0xff026F2E),
                          borderRadius: BorderRadius.circular(12)),
                      tabs: const [
                        Tab(
                            child: Text(
                          "Active",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                          ),
                        )),
                        Tab(
                            child: Text(
                          "Inactive",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Oops! Nothing to see here",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              """You currently don't have any Active recurring""",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              """ payment. When you do, they’ll show up here.""",
                              style: TextStyle(
                                color: Color(0xff026F2E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ), // payment. When you do, they’ll show up here.
                            )
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Oops! Nothing to see here",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 4),
                            Text(
                              """You currently don't have any Inactive recurring""",
                              style: TextStyle(
                                color: Color(0xff026F2E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              """ payment. When you do, they’ll show up here.""",
                              style: TextStyle(
                                  color: Color(0xff026F2E),
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight
                                      .w400), // payment. When you do, they’ll show up here.
                            )
                          ]),
                    ],
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
