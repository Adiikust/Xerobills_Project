import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xerobills/controllers/dropDownController.dart';
import 'package:xerobills/controllers/paymentMethodController.dart';
import 'package:xerobills/widgets/customPlanOption.dart';

class InternetSubscription extends StatelessWidget {
  InternetSubscription({super.key});
  final PaymentMethodController controller = Get.put(PaymentMethodController());
  final DropdownController dropdownController = Get.put(DropdownController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(right: 25, left: 25, top: 10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                          padding: EdgeInsets.only(
                              top: 10, left: 2, bottom: 10, right: 10),
                          child: SvgPicture.asset(
                              "assets/media/svg/arrowleft.svg")),
                    ),
                    Text(
                      "Internet Subscription",
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
                Text(
                  "Select Beneficiary",
                  style: TextStyle(
                      color: Color(0xff003333),
                      letterSpacing: 0.5,
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffBFD7DE),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 0),
                            child: Image.asset(
                              "assets/media/default-avatar.png",
                              height: 60,
                              scale: 0.5,
                              width: 60,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Primary Number",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff003333),
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "+234 800 000 0000",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff003333),
                                    fontFamily: "Poppins"),
                              )
                            ],
                          )
                        ],
                      ),
                      GetBuilder<DropdownController>(
                          builder: (dropDownController) {
                        return GestureDetector(
                          onTap: () {
                            // Get.defaultDialog(
                            //   content: DropdownButton<String>(
                            //     value: dropdownController.selectedValue,
                            //     items: [
                            //       DropdownMenuItem(
                            //           child: Text('Option 1'), value: 'Option 1'),
                            //       DropdownMenuItem(
                            //           child: Text('Option 2'), value: 'Option 2'),
                            //       DropdownMenuItem(
                            //           child: Text('Option 3'), value: 'Option 3'),
                            //     ],
                            //     onChanged: (String? value) {
                            //       dropdownController.setSelectedValue(value ?? '');
                            //       Get.back();
                            //     },
                            //   ),
                            // );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8),
                            child: SvgPicture.asset(
                                "assets/media/svg/dropdown.svg"),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/media/providers/mtn.png",
                        height: 47,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff026F2E)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "MTN Network",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: "Poppings"),
                            ),
                            SvgPicture.asset("assets/media/svg/vector-2.svg")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff026F2E)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daily Bundles",
                        style: TextStyle(
                            color: Color(0xff003333),
                            letterSpacing: 0.5,
                            fontSize: 15,
                            fontFamily: "Poppings"),
                      ),
                      SvgPicture.asset("assets/media/svg/vector-2.svg")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Color(0xff026F2E),
                          ),
                        ),
                      ),
                      Text(
                        "Select Plan",
                        style: TextStyle(
                            color: Color(0xff003333),
                            letterSpacing: 0.5,
                            fontSize: 15,
                            fontFamily: "Poppings"),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Color(0xff026F2E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomPlanOption(
                  dataAmount: "40MB",
                  days: 1,
                  price: 50.00,
                ),
                CustomPlanOption(
                  dataAmount: "100MB",
                  days: 1,
                  price: 100.00,
                ),
                CustomPlanOption(
                  dataAmount: "1GB",
                  days: 1,
                  price: 300.00,
                ),
                CustomPlanOption(
                  dataAmount: "2GB",
                  days: 2,
                  price: 500.00,
                ),
                CustomPlanOption(
                  dataAmount: "3GB",
                  days: 2,
                  price: 700.00,
                ),
                // CustomPlanOption(dataAmount: "5GB",days: 3, price: 1000.00,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
