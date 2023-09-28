import 'package:get/get.dart';
class ShowPasswordController extends GetxController{
  bool showPwd = false;

  // ignore: non_constant_identifier_names
  void ShowPwd(){
    showPwd = !showPwd;
    update();
  }
}