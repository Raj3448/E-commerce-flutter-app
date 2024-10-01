

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController{

  PageController pageviewController = PageController();

  
  RxInt indexes=0.obs;
RxString selectedScreen=('details').obs;

 

clickingTimeChangingScreen(String value,int index){
  selectedScreen.value=value;
  indexes.value=index;
}

@override
  void dispose() {

  pageviewController.dispose();
    super.dispose();
 
  }

}