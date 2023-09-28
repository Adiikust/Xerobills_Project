import 'package:get/get.dart';

class SelectionController extends GetxController {
  //for now use dummy false values
  var selectedOptions = <bool>[false, false, false];

  void selectOption(int index) {
    // Unselect all options
    selectedOptions = List.generate(selectedOptions.length, (_) => false);
    // Select the chosen option
    selectedOptions[index] = true;
    update();
  }
}