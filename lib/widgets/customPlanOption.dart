import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../views/internet/internetSubscriptionSummary.dart';

// ignore: must_be_immutable
class CustomPlanOption extends StatelessWidget {
  CustomPlanOption({
    required this.dataAmount,
    required this.days,
    required this.price,
    super.key,
  });
  String dataAmount;
  int days;
  double price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>InternetSubscriptionSummary());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff026F2E),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    "$dataAmount ",
                    style: const TextStyle(
                        color: Color(0xff003333),
                        letterSpacing: 0.5,
                        fontSize: 16,
                        fontFamily: "Poppings"),
                  ),
                  Text(
                    days > 1?
                    "($days Days Plan)": "($days Day Plan)",
                    style: const TextStyle(
                        color: Color(0xff003333),
                        letterSpacing: 0.5,
                        fontSize: 16,
                        fontFamily: "Poppings"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 1.5,
                  color: const Color(0xff026F2E),
                ),
                Container(
                  width: 123,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xffBFD7DE),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(9.5),
                      bottomRight: Radius.circular(9.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SvgPicture.asset(
                          "assets/media/svg/naira.svg",
                          // ignore: deprecated_member_use
                          color: const Color(0xff003333),
                          height: 15,
                          width: 13,
                        ),
                      ),
                      Text(
                        price.toStringAsFixed(2),
                        style: const TextStyle(
                            color: Color(0xff003333),
                            letterSpacing: 0.5,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppings"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
