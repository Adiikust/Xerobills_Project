import 'package:get/get.dart';

class AlertSettingsController extends GetxController {
  bool emailSelected = false;
  bool smsSelected = false;
  bool pushSelected = false;
  bool productSelected = false;

  void onEmailTapped() {
    emailSelected = !emailSelected;
    update();
  }

  void onSMSTapped() {
    smsSelected = !smsSelected;
    update();
  }

  void onPushTapped() {
    pushSelected = !pushSelected;
    update();
  }

  void onProductTapped() {
    productSelected = !productSelected;
    update();
  }
}
