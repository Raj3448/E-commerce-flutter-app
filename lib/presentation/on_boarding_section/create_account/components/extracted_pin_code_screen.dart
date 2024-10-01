import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/controller/create_accopunt_controller.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExtractedPinCodeScreen extends StatelessWidget {
  const ExtractedPinCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
         CreateAccountController   controller=Get.find();

    return SizedBox(
      height: Adaptive.h(78),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            sizedBoxHeight15,
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quickly Enter Your Pincode',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 20.px),
                )),
                sizedBoxHeight15,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'We use your pincode to help you discover\nproducts more effectively',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 12.px),
              ),
            ),
            sizedBoxHeight40,
            Image.asset('assets/images/createtab2.png'),
            sizedBoxHeight20,
            SizedBox(
height: Adaptive.h(6),
  child:   TextField(

    decoration: InputDecoration(
    hintText: '676719',
    hintStyle: TextStyle(color: black),
    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10))),
    contentPadding: EdgeInsets.all(10)
  
    ),
  
  ),
),
sizedBoxHeight10,
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        CircleAvatar(
    
      radius: Adaptive.w(4),
    
      child: Image.asset('assets/images/createtab2img2.png')),
      sizedBoxWidth20,
      Text('City Name: VADODARA, GUJARAT',style: GoogleFonts.poppins(fontSize: 15.px,fontWeight: FontWeight.w400),)
  ],
),
sizedBoxHeight30,
InkWell(
  onTap: () {
    controller.clickingTimeChangingScreen('verification',2);
    controller.pageviewController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
  },
  child: ButtonWidget(backgroundColor: buttonColor, title: 'Submit', textColor: whiteColor,heights: Adaptive.h(6),))

          ],
        ),
      ),
    );
  }
}
