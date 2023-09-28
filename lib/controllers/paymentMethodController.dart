import 'package:get/get.dart';
class PaymentMethodController extends GetxController{
  bool selected = false;
  bool select = false;

  void onWalletTap(){
    select = !select;
    selected = false;
    update();
  }
    void onCardTap(){
    selected = !selected;
    select = false;
    update();
  }
}