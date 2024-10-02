import 'dart:developer';

import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/create_account_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/login_screen/login_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/walk_through/components/page2.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/walk_through/components/page3.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'components/page1.dart';

class WalkThroughScreen2 extends StatelessWidget {
  WalkThroughScreen2({super.key});

  PageController pageController=PageController();


  @override
  Widget build(BuildContext context) {
    RxInt onpageChanged=0.obs;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:Adaptive.w(4)),
          child: Column(
            children: [
              SizedBox(
                                height: Adaptive.h(70),

                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    log("value:$value");
                    onpageChanged.value=value;
                  },
                  // reverse: true,
                  children: [
                    Page1(),
                    Page2(),
                    Page3()
                  ],
                )),
              sizedBoxHeight20,
                Obx(
                () {
                    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          onpageChanged.value==0?   Container(
                    width: Adaptive.w(8),
                    height: Adaptive.h(1),
              decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(Adaptive.w(5))
              ),
              ): CircleAvatar(
                    radius: Adaptive.w(1),
                    backgroundColor: grey,
              ),
              sizedBoxWidth15,
              onpageChanged.value==1?   Container(
                    width: Adaptive.w(8),
                    height: Adaptive.h(1),
              decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(Adaptive.w(5))
              ),
              ): CircleAvatar(
                    radius: Adaptive.w(1),
                    backgroundColor: grey,
              ),
                                          sizedBoxWidth15,

                onpageChanged.value==2?   Container(
                    width: Adaptive.w(8),
                    height: Adaptive.h(1),
              decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(Adaptive.w(5))
              ),
              ): CircleAvatar(
                    radius: Adaptive.w(1),
                    backgroundColor: grey,
              ),
            ],
          );
                  }
                ),
          sizedBoxHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome to ',style: GoogleFonts.poppins(fontSize: 26.px,fontWeight: FontWeight.w600),),
                  Image.asset('assets/images/logo2.png')
                ],
              ),
              sizedBoxHeight20,
              Text('Trusted by 4 lakh+ buyers all over India as their best sourcing partner',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.px),)
              ,
              Spacer()
              ,Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>LoginScreen());
                      },
                      child: Container(
                        width: Adaptive.w(45),
                        height: Adaptive.h(6),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: buttonColor
                        ),
                        child: Center(child: Center(child: Text('Login',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.px,color: whiteColor),),),),
                      ),
                    ),
                      GestureDetector(
                        onTap: () {

                          Get.to(()=> CreateAccountScreen());
                        
                        },
                        child: Container(
                        width: Adaptive.w(45),
                        height: Adaptive.h(6),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        color: buttonColor
                        ),
                        child: Center(child: Center(child: Text('Create Account',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.px,color: whiteColor),),),),
                                          ),
                      )
                  ],
              ),
              sizedBoxHeight20
            ],
          ),
        ),
      ),
    );
  }
}

