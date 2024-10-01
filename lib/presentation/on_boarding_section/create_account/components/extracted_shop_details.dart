
import 'dart:developer';

import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/controller/create_accopunt_controller.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utilz/colors.dart';

class ExtractedPageView extends StatelessWidget {
  const ExtractedPageView({
    super.key,
  });

 

  @override
  Widget build(BuildContext context) {
 
  RxString shopButtonValue=''.obs;
     CreateAccountController   controller=Get.find();

    return SingleChildScrollView(
      child: Container(
                 width:  MediaQuery.of(context).size.width,
                 height: Adaptive.h(80),
                //  color: Colors.black12,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SingleChildScrollView(
                    
                     child: Column(
                         children: [
                          //  sizedBoxHeight10,
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Do you have Retail Shop?',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18.px),)
                           ,Image.asset('assets/images/createtab1.png')
                             ],
                           ),
                           Obx(
                              () {
                               return Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   GestureDetector(
                                     onTap: () {
                      shopButtonValue.value='Yes';
                      log(shopButtonValue.value);
                                     },
                                     child: Container(
                                     width: Adaptive.w(45),
                                     height: Adaptive.h(5),
                                     decoration: BoxDecoration(
                      color:shopButtonValue.value=="Yes"?buttonColor:whiteColor,
                      border: Border.all(color: buttonColor),
                      borderRadius: BorderRadius.circular(10)
                                     ),
                                     child: Center(
                      child: Text('Yes',style: TextStyle(color:shopButtonValue.value=="Yes"?whiteColor: buttonColor),),
                                     ),
                                     ),
                                   ),
                                     GestureDetector(
                      onTap: () {
                        shopButtonValue.value='No';
                      log(shopButtonValue.value);
                      },
                      child: Container(
                                  width: Adaptive.w(45),
                                  height: Adaptive.h(5),
                                  decoration: BoxDecoration(
                                                      color:shopButtonValue.value=="No"?buttonColor:whiteColor,
                       
                      border: Border.all(color: buttonColor),
                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                      child: Text('No',style: TextStyle(color:shopButtonValue.value=="No"?whiteColor: buttonColor),),
                                  ),
                                  ),
                                     )
                                 ],
                               );
                             }
                           ),
                           sizedBoxHeight40,
                           Obx(
                              () {
                               return shopButtonValue.value=="Yes"? Column(
                                 children: [
                                    Align(
                                     alignment: Alignment.centerLeft,
                                     child:Text('Shop Name',style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w500),)
                                   ),
                                   Container(
                                     height: Adaptive.h(15),
                                     decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(12.sp),
                                     ),
                                     child: Center(
                      child: Image.asset('assets/images/shopdetailsimage.png'),
                                     ),
                                   ),
                                   sizedBoxHeight20,
                       
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child:Text('Shop Name',style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w500),)
                                   ),
                     sizedBoxHeight20,
                       SizedBox(
                       height: Adaptive.h(6),
                         child:   TextField(
                       
                         decoration: InputDecoration(
                         
                         border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)))
                         
                         ),
                         
                         ),
                       ),
                       sizedBoxHeight20,
                        Align(
                                 alignment: Alignment.centerLeft,
                                 child:Text('Shop Owner Name',style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w500),)
                               ),
                               sizedBoxHeight20,
                       SizedBox(
                       height: Adaptive.h(6),
                         child:   TextField(
                       
                         decoration: InputDecoration(
                         
                         border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10)))
                         
                         ),
                         
                         ),
                       ),
                       sizedBoxHeight20,
                       
                                 ],
                               ):SizedBox(
                                 height: Adaptive.h(30),
                                 // color: black,
                               );
                             }
                           ),
                           
                       Row(
                         children: [
                         Checkbox(value: true,
                         activeColor: buttonColor,
                       shape: RoundedRectangleBorder(
                         side: BorderSide(color: buttonColor)
                         // borderRadius: BorderRadius.circular(10,
                       
                       ),
                        onChanged: (value) {
                          
                        },),
                        Text('I want all the order related updates on my phone',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 11.px),)
                         ],
                       ),
                       sizedBoxHeight20,
                        InkWell(
                          onTap: () {
                         controller.clickingTimeChangingScreen('pincode',1);
                          controller.pageviewController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                          },
                         child: ButtonWidget(backgroundColor: buttonColor, title: 'Continue', textColor: whiteColor,heights: Adaptive.h(6),))
                          
                          
                                          ,   sizedBoxHeight20,
    
                         ],
                     ),
                   ),
                 ),
      ),
    );
  }
}