

import 'package:get/get.dart';

class FilterController extends GetxController{

  RxInt selectedPriceType=0.obs;
 
 selectedPriceTypeChanging(int data){
 
 selectedPriceType.value=data;

 }

}