

import 'dart:developer';

import 'package:get/get.dart';

class OrderController extends GetxController{

  RxString selectedTabBar=('active').obs;
  RxInt selectedIndex=0.obs;

  changingTabBarView(String value,int index){
    selectedTabBar.value=value;
    selectedIndex.value=index;
    log(value);
  }


}