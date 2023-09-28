import 'package:get/get.dart';

class DropdownController extends GetxController {
  bool isVisible = false;
  var currentIndex = 0;

  void onTapped() {
    isVisible = !isVisible;
    update();
  }

  void selectValue(int index) {
    currentIndex = index;
    update();
  }
}