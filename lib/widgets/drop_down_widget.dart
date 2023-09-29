import 'package:flutter/material.dart';

class ReusableDropdownContainer extends StatelessWidget {
  final List<String> itemList;
  final String? selectedValue;
  final Function(String?) onChanged;
  final String hintText;

  ReusableDropdownContainer({
    required this.itemList,
    required this.selectedValue,
    required this.onChanged,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          border: Border.all(
            width: 1,
            color: const Color(0xff026F2E),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), // Shadow color
              offset: const Offset(3, 3), // Shadow position (X, Y)
              blurRadius: 3, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12),
        child: DropdownButton(
          icon: Icon(
            Icons.arrow_drop_down_circle_outlined,
            color: Colors.grey.shade700,
            size: 25,
          ),
          elevation: 2,
          isExpanded: true,
          underline: Container(),
          hint: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Text(
              hintText,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 15,
                fontFamily: "Poppings",
              ),
            ),
          ),
          value: selectedValue,
          onChanged: onChanged,
          items: itemList.map((location) {
            return DropdownMenuItem(
              value: location,
              child: Text(location),
            );
          }).toList(),
        ),
      ),
    );
  }
}
