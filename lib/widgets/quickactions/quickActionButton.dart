
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable, camel_case_types
class quickActionButton extends StatelessWidget {
 quickActionButton({
  required this.svgUrl,
  required this.actionText,
  required this.borderRadius,
  required this.color,
  this.onTap,
    super.key,
  });

String svgUrl;
String actionText;
BorderRadiusGeometry borderRadius;
Color color;
Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      elevation: 4,
      shadowColor: const Color(0xff009933),
      color: color,
      child: InkWell(
        borderRadius: borderRadius as BorderRadius,
        onTap: onTap,
        child: Container(
          height: 10.2.h,
          width: 41.5.w,
          decoration: const BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  actionText,
                  style: const TextStyle(
                      color: Color(0xff026F2E),
                      letterSpacing: 0.5,
                      fontSize: 16,
                      fontFamily: "Poppings"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 30, right: 8),
                child: SvgPicture.asset(
                  svgUrl,
                  height: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}