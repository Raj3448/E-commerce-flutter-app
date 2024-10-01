

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utilz/colors.dart';
import '../../../../utilz/sized_box.dart';

class FlashSaleScreen extends StatelessWidget {
  const FlashSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container(
              height: Adaptive.h(20),
              width: Adaptive.w(100),
              color: chatColor,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // sizedBoxHeight50,
                  sizedBoxHeight50,
                  Row(
                    children: [
                      sizedBoxWidth40,
                     IconButton(icon: Icon(Icons.arrow_back_ios,size: 17.px,),onPressed: () {
                       Get.back();
                     },),
                       Text('Flash Sale',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            // Get.to(() => NotificationScreen());
                          },
                          child: Image.asset('assets/images/appbar1.png')),
                      sizedBoxWidth30,
                      Image.asset('assets/images/appbar2.png'),
                      sizedBoxWidth30,
                      Image.asset('assets/images/carbon_delivery.png'),
                      sizedBoxWidth40,
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: Adaptive.h(6),
                    width: Adaptive.w(90),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Search your products...',
                          style: GoogleFonts.poppins(
                              color: grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.px),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: buttonColor,
                        ),
                        sizedBoxWidth20,
                        Container(
                          height: Adaptive.h(2),
                          width: Adaptive.w(0.4),
                          color: grey,
                        ),
                        sizedBoxWidth20,
                        Image.asset('assets/images/home2.png'),
                        sizedBoxWidth15
                      ],
                    ),
                  ),
                  sizedBoxHeight20,
                ],
              ),
            ),
            sizedBoxHeight30,
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset('assets/images/homeban1.png'),
            ),
            sizedBoxHeight20,
        Text('FASHION SALE',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 17.px),),
       sizedBoxHeight20
       ,
        Row(
      
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Adaptive.w(12),
              height: Adaptive.h(0.5),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(12.sp)
              ),
            ),
            sizedBoxWidth20,
              Container(
              width: Adaptive.w(8),
              height: Adaptive.h(0.5),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(12.sp)
              ),
            )
          ],
        ),
sizedBoxHeight30,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Adaptive.h(20),
              width: Adaptive.w(45),
              child: Image.asset('assets/images/sale1.png',fit: BoxFit.fill,)),
              sizedBoxWidth20,
                    SizedBox(
                         height: Adaptive.h(20),
              width: Adaptive.w(45),
                      child: Image.asset('assets/images/sale2.png', fit: BoxFit.fill,)),

          ],
        ),

        ],
      ),
    );
  }
}