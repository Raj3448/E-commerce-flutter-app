import 'dart:developer';

import 'package:ecommerce_seller/presentation/main_section/account/edit_profile_screen/components/extracted_address.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'components/extraceted_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});


  PageController controller =PageController();

  @override
  Widget build(BuildContext context) {
    RxBool isClicked=false.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'Edit Account',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: Adaptive.h(20),
                width: Adaptive.w(100),
                decoration: BoxDecoration(
                  // border: Border.all(color: black),
                color: whiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: Adaptive.h(11),
                      width: Adaptive.w(100),
                      color: buttonColor
                      ,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: Adaptive.h(4),
                left: Adaptive.w(35),
                child: Image.asset('assets/images/profile.png'))
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10,),
            decoration: BoxDecoration(
              color: chatColor,
            
            ),
            child: Flex(direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    isClicked.value=false;
                    log("is clicked:$isClicked");

                    controller.previousPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                  },
                  child: Obx(
                    () {
                      return Column(
                        children: [
                          Text('Basic Details',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20.px,fontWeight: FontWeight.w500),),
                      sizedBoxHeight10,
                      isClicked.value==false? Divider(
                          thickness: 5,color: black,
                          height: 0,
                        ):SizedBox()
                      ],
                      );
                    }
                  ),
                )),
                Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                                        isClicked.value=true;
log("is clicked:$isClicked");
                                        controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.linear);

                  },
                  child: Obx(
                  () {
                      return Column(
                        children: [
                          Text('Address',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20.px,fontWeight: FontWeight.w500),),
                      sizedBoxHeight10,
                      isClicked.value==true? const Divider(
                              thickness: 5,color: black,
                              height: 0,
                            ):const SizedBox()
                        ],
                      );
                    }
                  ),
                ))
            ],
            ),
          ),
        SizedBox(
          height: Adaptive.h(62),
          // color: black,
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              if (value==0) {
                isClicked.value=false;
              }else{
                                isClicked.value=true;

              }
            },
            children: [
              ExtractedProfileWidget(),
                            ExtractedAddressWidget()

            ],
          ),
        )
          
          
        ],
      ),
    );
  }
  
}
