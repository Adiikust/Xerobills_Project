import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class emailTxtField extends StatelessWidget {
  const emailTxtField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //String _email = '', _pwd = '';
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: const Material(
        elevation: 2,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)),
        child: TextField(
          cursorColor: Colors.black,
          keyboardType: TextInputType.emailAddress,
          //onChanged: (val) => _email = val,
          decoration: InputDecoration(
            labelText: 'Email Address',
            labelStyle: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppings",
                fontSize: 15),
            hintText: 'Email Address',
            hintStyle: TextStyle(
                color: Colors.grey, fontFamily: "Poppings", fontSize: 15),
            contentPadding: EdgeInsets.only(left: 29, right: 5),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xff026F2E)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            disabledBorder: OutlineInputBorder(
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
          style: TextStyle(
            fontSize: 15,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
