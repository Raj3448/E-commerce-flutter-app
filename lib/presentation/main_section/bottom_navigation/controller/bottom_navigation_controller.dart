

import 'package:get/get.dart';

class BottomNavigationController extends GetxController{

RxInt selectedIndex=0.obs;
RxString selectedText='home'.obs;
 

  bottomNavigationIndexSelecting(int index,String text){

 selectedIndex.value=index;
selectedText.value=text;
  }


}