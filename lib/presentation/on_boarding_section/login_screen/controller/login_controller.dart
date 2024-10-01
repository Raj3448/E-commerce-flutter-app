

import 'package:get/get.dart';

class LoginController extends GetxController{

RxString selectedValue='Login'.obs;

  changingSelectedOption(String login){
    selectedValue.value=login;

  }
} 