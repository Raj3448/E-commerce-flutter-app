
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios,
                      size: 18.sp,

        )),
        title:             Text('My Notifications',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
        actions: [
          // Image.asset('assets/images/appbar1.png'),
          // sizedBoxWidth20,
                    Image.asset('assets/images/appbar2.png'),
                              sizedBoxWidth20,

          Image.asset('assets/images/appbar3.png'),
          sizedBoxWidth20,


        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Center(child: Image.asset('assets/images/no-notification-state-GoErjPcx4d.png')),
sizedBoxHeight20,
Text('No New Notifications',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13.px),)
        ],
      ),
    );
  }
}