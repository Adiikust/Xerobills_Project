import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class MyRecentsListTile extends StatelessWidget {
  MyRecentsListTile({
    required this.imageUrl,
    required this.amount,
    required this.desc,
    super.key,
  });
  String imageUrl;
  String amount;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 5,
                spreadRadius: 2,
                offset: const Offset(0, 4))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
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
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2FB73B),
                          fontFamily: "Poppins"),
                    ),
                    const Text(
                      "+234 812 704 6244",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
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
                SvgPicture.asset("assets/media/svg/vector-9.svg"),
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
                      style: const TextStyle(
                          color: Color(0xff003333),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
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
