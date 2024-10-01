import 'package:ecommerce_seller/presentation/on_boarding_section/otp/otp_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              sizedBoxHeight15,
              Text(
                'Back',
                style: GoogleFonts.poppins(fontSize: 14.px, color: buttonColor),
              ),
              sizedBoxHeight20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 30.px),
              
                ),
              ),
              sizedBoxHeight20,
              Text('Enter your email or mobile number and we’ll send a \ncode your password to reset.',
              style: GoogleFonts.poppins(fontSize: 12.px,fontWeight: FontWeight.w400,color: grey),
              ),
              sizedBoxHeight40,
                 TextField(
             decoration: InputDecoration(
               // label: Text('Mobile Number'),
               focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: grey.withOpacity(0.3))
               ),
               labelText: 'Email or Mobile Number',
               labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.px,color: black),
               border: OutlineInputBorder(
                borderSide: BorderSide(color: black,
                ),
              

                borderRadius: BorderRadius.circular(10)
               ),
              
              //  border: OutlineInputBorder(borderSide: BorderSide.none),
               hintText: 'Email or Mobile Number *',
               hintStyle: TextStyle(
                color: grey.withOpacity(0.3),
               ),
              contentPadding: EdgeInsets.all(10)
             ),
             
            ),
            sizedBoxHeight50,
            GestureDetector(
               onTap: () {
                 Get.to(()=>OtpScreen(isReset: true,));
               },
              child: ButtonWidget(backgroundColor: buttonColor, title: 'SEND OTP', textColor: whiteColor,heights: Adaptive.h(6),size:19.px ,))
            ],
          ),
        ),
      ),
    );
  }
}
