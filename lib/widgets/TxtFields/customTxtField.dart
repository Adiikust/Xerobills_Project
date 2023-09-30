import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTxtField extends StatelessWidget {
  CustomTxtField(
      {super.key,
      required this.hintText,
      this.labelText,
      required this.obscureText,
      this.hintStyle,
      required this.topPAdding});
  String hintText;
  String? labelText;
  bool obscureText;
  double topPAdding;
  TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    //String _email = '';
    return Padding(
      padding: EdgeInsets.only(top: topPAdding),
      child: Material(
        elevation: 2,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        child: TextField(
          obscureText: obscureText,
          cursorColor: Colors.black,
          keyboardType: TextInputType.emailAddress,
          //onChanged: (val) => _email = val,
          decoration: InputDecoration(
            suffixIconColor: Colors.grey.shade700,
            suffixIconConstraints:
                const BoxConstraints(maxWidth: 20, maxHeight: 20),
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppings",
                fontSize: 15),
            hintText: hintText,
            hintStyle: hintStyle,
            contentPadding: const EdgeInsets.only(left: 29, right: 5),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
