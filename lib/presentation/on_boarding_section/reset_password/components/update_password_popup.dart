import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(30),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.9, // Set the desired width here
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Lottie image
              SizedBox(
                height: Adaptive.h(12),
                child: Lottie.asset(
                  'assets/images/Animation - 1712665166037.json',
                  fit: BoxFit.fill,
                  repeat: false,
                ),
              ),
              sizedBoxHeight20,
              // Success message
              Text(
                'Success!',
                style: GoogleFonts.poppins(
                  fontSize: 24.px,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff000000),
                ),
              ),
              sizedBoxHeight10,
              // Additional line of text
              Text(
                'Your Password has been changed!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 12.px),
              ),
              sizedBoxHeight40,

              // Button to navigate to the next screen
             Container(
              height: Adaptive.h(6),
              width: Adaptive.w(35),
              decoration: BoxDecoration(
                border: Border.all(color: buttonColor),
               borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Done',style: GoogleFonts.poppins(fontSize: 20.px,color: buttonColor),),
              ),
             )
            ],
          ),
        ),
      );
    },
  );
}
