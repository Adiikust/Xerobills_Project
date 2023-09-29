import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/widgets/rich_text_two.dart';

class SavedPayments extends StatelessWidget {
  const SavedPayments({super.key});

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
                      child: SvgPicture.asset("assets/media/svg/arrowleft.svg"),
                    ),
                  ),
                  CustomRichTextTwo(
                    firstText: "Saved",
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
              const Spacer(),
              Center(
                child: Column(children: const [
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
                    """You haven't saved any payment yet. When""",
                    style: TextStyle(
                        color: Color(0xff026F2E),
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    """ you do, they’ll show up here.""",
                    style: TextStyle(
                        color: Color(0xff026F2E),
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight
                            .w400), // payment. When you do, they’ll show up here.
                  )
                ]),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
