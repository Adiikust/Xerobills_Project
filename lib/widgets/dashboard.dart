import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:xerobills/controllers/navigationController.dart';
import 'package:xerobills/views/home/home.dart';
import 'package:xerobills/views/lifestyle/lifestylePage.dart';
import 'package:xerobills/views/payment/paymentsPage.dart';
import 'package:xerobills/views/profile/manageProfiles.dart';
import 'package:xerobills/views/transactions/transactionPage.dart';
import 'package:xerobills/widgets/drawer/customDrawer.dart';
import '../controllers/drawerController.dart';

class DashBoard extends GetView<DrawersController> {
  DashBoard({super.key});
  final List<Widget> screens = [
    HomePage(),
    const TransactionPage(),
    PaymentsPage(),
    LifestylePage(),
  ];

  final BottomNavigationController _controller =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<BottomNavigationController>(
        builder: (context) => Scaffold(
          key: controller.scaffoldKey,
          drawer: const CustomDrawer(),
          body: screens[_controller.currentIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(
                () => ManageProfiles(),
                // transition: Transition.zoom
              );
            },
            backgroundColor: const Color(0xff2FB73B),
            child: SvgPicture.asset(
              "assets/media/svg/carbon_ibm-tenet11.svg",
              // ignore: deprecated_member_use
              color: Colors.white,
              height: 40,
              width: 40,
            ),
          ),
          backgroundColor: const Color(0xffF5F5F5),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomAppBar(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: SizedBox(
                  height: 9.h,
                  child: Container(
                    color: const Color(0xff003333),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //home
                        GestureDetector(
                          onTap: () => _controller.changePage(0),
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20.0, right: 20.0, bottom: 0),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/media/svg/home-1.svg",
                                  // ignore: deprecated_member_use
                                  color: _controller.currentIndex == 0
                                      ? Colors.white
                                      : Colors.grey,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: _controller.currentIndex == 0
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //transactions
                        GestureDetector(
                          // onTap: () => _controller.changePage(1),
                          onTap: () => Get.to(() => const TransactionPage()),
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20.0, right: 20.0, bottom: 0),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/media/svg/transac.svg",
                                  // ignore: deprecated_member_use
                                  color: _controller.currentIndex == 1
                                      ? Colors.white
                                      : Colors.grey,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Transactions",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: _controller.currentIndex == 1
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),

                        //payments
                        GestureDetector(
                          // onTap: () => _controller.changePage(2),
                          onTap: () => Get.to(() => PaymentsPage()),
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20.0, right: 20.0, bottom: 0),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/media/svg/carbon-cics-transaction-server-zos.svg",
                                  // ignore: deprecated_member_use
                                  color: _controller.currentIndex == 2
                                      ? Colors.white
                                      : Colors.grey,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Payments",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: _controller.currentIndex == 2
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //lifestyle
                        GestureDetector(
                          //onTap: () => _controller.changePage(3),
                          onTap: () => Get.to(() => LifestylePage()),
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20.0, right: 20.0, bottom: 0),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/media/svg/carbon-cookie.svg",
                                  // ignore: deprecated_member_use
                                  color: _controller.currentIndex == 3
                                      ? Colors.white
                                      : Colors.grey,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Lifestyle",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: _controller.currentIndex == 3
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
