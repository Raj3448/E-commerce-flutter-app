

import 'dart:developer';
import 'package:get/get.dart';


class VerificationController extends GetxController {
 
  RxString selectedTabBar=('gst').obs;
  RxInt selectedIndex=0.obs;

  changingTabBarView(String value,int index){
    selectedTabBar.value=value;
    selectedIndex.value=index;
    log(value);
  }


}