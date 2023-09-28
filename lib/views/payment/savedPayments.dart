import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SavedPayments extends StatelessWidget {
  SavedPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
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
                      padding: EdgeInsets.only(
                          top: 10, left: 2, bottom: 10, right: 10),
                      child: SvgPicture.asset("assets/media/svg/arrowleft.svg"),
                    ),
                  ),
                  Text(
                    "Saved Payments",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        color: Color(0xff026F2E)),
                  ),
                  Container(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              Center(
                child: Column(children: [
                  Text(
                    "Oops! Nothing to see here",
                    style: TextStyle(
                      color: Color(0xff003333),
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    """You haven't saved any payment yet. When""",
                    style: TextStyle(
                      color: Color(0xff026F2E),
                      fontFamily: "Poppins",
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    """ you do, they’ll show up here.""",
                    style: TextStyle(
                      color: Color(0xff026F2E),
                      fontFamily: "Poppins",
                      fontSize: 10,
                    ), // payment. When you do, they’ll show up here.
                  )
                ]),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
