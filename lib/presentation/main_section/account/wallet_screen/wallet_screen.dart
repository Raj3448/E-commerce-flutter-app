
import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: chatColor,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios,size: 18.sp,)),
        title:             Text('Wallet',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
        actions: [
          GestureDetector(
                              onTap: () {
                                Get.to(() => NotificationScreen());
                              },
                              child: Image.asset('assets/images/appbar1.png')),
                          sizedBoxWidth30,
                          Image.asset('assets/images/appbar2.png'),
                          sizedBoxWidth30,
                          Image.asset('assets/images/carbon_delivery.png'),
                          sizedBoxWidth40,


        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: Adaptive.w(100),
                height: Adaptive.h(25),
                padding: EdgeInsets.all(Adaptive.w(3)),
                decoration: BoxDecoration(
                  color: chatColor
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: Adaptive.w(10),bottom:Adaptive.h(3) ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Wallet Balance',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18.px),)
                    , Text('₹0',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 22.px),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: Adaptive.h(22),
            left: Adaptive.w(5),
            child: Material(
                              borderRadius: BorderRadius.circular(12),
elevation: 5,
              child: Container(
                height: Adaptive.h(10),
                width: Adaptive.w(90),
                padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: whiteColor
              ),
              child: Row(
                // mainAxisAlignment: mai,
                children: [
                  Image.asset('assets/images/wallet1.png'),
                  sizedBoxWidth15,
                  Text('Add Money',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 17.px),),
                  const Spacer(),
                  Container(
                    height: Adaptive.h(6),
                    // width: Adaptive.w(),
                    padding: const EdgeInsets.symmetric(horizontal: 12,),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: buttonColor,
                      )
                    ),
                    child: Center(
                      child: Text('Add',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18.px,color: buttonColor),),
                    ),
                  )
                ],
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}