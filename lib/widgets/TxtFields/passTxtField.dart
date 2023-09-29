import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/showPasswordController.dart';

// ignore: camel_case_types
class passTxtField extends StatelessWidget {
  const passTxtField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //String _pwd = '';
    // ignore: unused_local_variable
    final controller = Get.put(ShowPasswordController());
    return GetBuilder<ShowPasswordController>(
      builder: (controller) => Padding(
          padding: EdgeInsets.only(top: 10, bottom: 2.h),
          child: Material(
            elevation: 2,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            child: TextField(
              cursorColor: Colors.black,
              obscureText: !controller.showPwd,
              enableSuggestions: false,
              autocorrect: false,
              // onChanged: (val) => _pwd = val,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                    color: Colors.grey, fontFamily: "Poppings", fontSize: 15),
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
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.ShowPwd();
                  },
                  icon: Icon(
                    controller.showPwd
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xff000000),
              ),
            ),
          )),
    );
  }
}
