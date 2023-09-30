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
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Get.to(() => const TransactionDetails());
      },
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(imageUrl),
                ),
                const SizedBox(
                  width: 7,
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
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "+234 812 704 6244",
                      style: TextStyle(
                          fontSize: 14,
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
                      color: Colors.red,
                      // ignore: deprecated_member_use
                      // color: const Color(0xff003333),
                    ),
                    Text(
                      " $amount",
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
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
    );
  }
}
