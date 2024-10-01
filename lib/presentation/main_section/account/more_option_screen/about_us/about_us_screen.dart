

import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'About Us',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
      ),
body:  Padding(
  padding:  EdgeInsets.symmetric(horizontal: 12.sp),
  child:   Column(
  
            children: [
  
              sizedBoxHeight15,
  
              Image.asset('assets/images/logo2.png'),
  
              sizedBoxHeight20,
  
              Image.asset('assets/images/walkthrough1.png'),
  
          sizedBoxHeight20,
   Spacer(),
   Row(
  
                  mainAxisAlignment: MainAxisAlignment.start,
  
                  children: [
  
                    Text('Welcome to ',style: GoogleFonts.poppins(fontSize: 26.px,fontWeight: FontWeight.w600),),
  
                    Image.asset('assets/images/logo2.png')
  
                  ],
  
                )         ,Text('Trusted by 4 lakh+ buyers all over India as their best sourcing partner',
  
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.px),),
  
                     sizedBoxHeight60,

  
          
  
              
  
            ],
  
          ),
),
    );
  }
}