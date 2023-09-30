import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/tiles/transactionTile.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 17),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Transactions",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff026F2E)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Material(
                        elevation: 2,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        child: TextField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            suffixIconColor: Colors.grey.shade700,
                            suffixIconConstraints: const BoxConstraints(
                                maxWidth: 20, maxHeight: 20),
                            hintText: "Search for a transaction",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 14,
                                fontFamily: "Poppings"),
                            contentPadding:
                                const EdgeInsets.only(left: 29, right: 5),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff026F2E)),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff026F2E)),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
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
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 7),
                        child: SvgPicture.asset(
                          "assets/media/svg/transaction-filter.svg",
                          height: 23,
                          width: 23,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TabBar(
                    splashBorderRadius: BorderRadius.circular(10),
                    unselectedLabelColor: const Color(0xffBDBDBD),
                    indicator: BoxDecoration(
                        color: const Color(0xff026F2E),
                        borderRadius: BorderRadius.circular(12)),
                    tabs: const [
                      Tab(
                          child: Text(
                        "All",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Credit",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Debit",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return TransactionListTile(
                            imageUrl: "assets/media/providers/mtn.png",
                            amount: "10,200.00",
                            desc: "MTN Airtime for Abdulhaqq Sule",
                            date: "March 20, 2023",
                            amountColor: const Color(0xff003333),
                          );
                        },
                      ),
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return TransactionListTile(
                            imageUrl: "assets/media/providers/mtn.png",
                            amount: "10,200.00",
                            desc: "MTN Airtime for Abdulhaqq Sule",
                            date: "March 20, 2023",
                            amountColor: const Color(0xff003333),
                          );
                        },
                      ),
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return TransactionListTile(
                            imageUrl: "assets/media/providers/mtn.png",
                            amount: "10,200.00",
                            desc: "MTN Airtime for Abdulhaqq Sule",
                            date: "March 20, 2023",
                            amountColor: const Color(0xff003333),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
