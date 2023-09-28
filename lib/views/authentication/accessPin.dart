import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'onboarding.dart';

class AccessPinPage extends StatefulWidget {
  const AccessPinPage({super.key});

  @override
  State<AccessPinPage> createState() => _AccessPinPageState();
}

class _AccessPinPageState extends State<AccessPinPage> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  var inputText = "";

  var actives = [false, false, false, false];

  var clears = [false, false, false, false];

  var currentIndex = 0;

  var values = [1, 2, 3, 2, 1];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 2, bottom: 10, right: 10),
                              child:
                                  SvgPicture.asset("assets/media/svg/arrowleft.svg")),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.offAll(const Onboarding());
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xff026F2E),
                          ),
                          child: const Text(
                            "Log out",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                color: Color(0xff003333)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 53,
                      width: 53,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: Color(0xffDDDDDD), shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/media/svg/access-pin-lock.svg",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text.rich(
                      TextSpan(
                          text: "Hello",
                          style: TextStyle(
                              color: Color(0xff003333),
                              letterSpacing: 0.5,
                              fontSize: 19,
                              fontFamily: "Poppings"),
                          children: [
                            TextSpan(
                              text: " Bashir,",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                  fontFamily: "Poppings"),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Enter your PIN",
                      style: TextStyle(
                          color: const Color(0xff003333).withOpacity(0.4),
                          letterSpacing: 0.5,
                          fontSize: 18,
                          fontFamily: "Poppings"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var i = 0; i < actives.length; i++)
                              const AnimatedBox(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, childAspectRatio: 1 / 0.7),
                        itemCount: 12,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 3),
                          child: (index == 9)
                              ? Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(
                                    "assets/media/svg/login-fingerprint.svg",
                                  ),
                                )
                              : (index == 11)
                                  ? Padding(
                                      padding: const EdgeInsets.all(23.0),
                                      child: SvgPicture.asset(
                                        "assets/media/svg/pin-clear.svg",
                                      ),
                                    )
                                  : MaterialButton(
                                      elevation: 0,
                                      height: 75,
                                      onPressed: () {},
                                      color: const Color(0xffF0F0F0),
                                      shape: const CircleBorder(),
                                      child: Text(
                                          "${numbers[index == 10 ? index - 1 : index]}"),
                                    ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff026F2E),
                        ),
                        child: const Text.rich(
                          TextSpan(
                              text: "Forgot",
                              style: TextStyle(
                                  color: Color(0xff003333),
                                  letterSpacing: 0.5,
                                  fontSize: 16,
                                  fontFamily: "Poppings"),
                              children: [
                                TextSpan(
                                    text: " PIN",
                                    style: TextStyle(
                                        color: Color(0xff003333),
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        fontFamily: "Poppings"),
                                    children: [
                                      TextSpan(
                                        text: "?",
                                        style: TextStyle(
                                            color: Color(0xff003333),
                                            letterSpacing: 0.5,
                                            fontSize: 16,
                                            fontFamily: "Poppings"),
                                      ),
                                    ]),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedBox extends StatefulWidget {
  const AnimatedBox({
    super.key,
  });

  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Container(
        margin: const EdgeInsets.all(15),
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF0F0F0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
