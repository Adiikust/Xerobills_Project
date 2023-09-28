import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../views/transactions/transactionDetails.dart';

// ignore: must_be_immutable
class TransactionListTile extends StatelessWidget {
  TransactionListTile({
    required this.imageUrl,
    required this.amount,
    required this.desc,
    required this.date,
    this.amountColor,
    super.key,
  });
  String imageUrl;
  String amount;
  String desc;
  String date;
  Color? amountColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Get.to(() => TransactionDetails());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff2FB73B),
                            fontFamily: "Poppins"),
                      ),
                      const Text(
                        "+234 812 704 6244",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff003333),
                            fontFamily: "Poppins"),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        color: Color(0xff868383),
                        letterSpacing: 0.5,
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppings"),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/media/svg/naira.svg",
                        height: 11,
                        width: 11,
                        // ignore: deprecated_member_use
                        color: const Color(0xff003333),
                      ),
                      Text(
                        " $amount",
                        style: TextStyle(
                            color: amountColor,
                            letterSpacing: 0.5,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppings"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
