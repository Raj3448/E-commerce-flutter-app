import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../../utilz/sized_box.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:  Adaptive.w(3)),
        child: Column(
          children: [
            sizedBoxHeight20,
            Text(
              'To get GST invoice and tax benefits, please provide GST Number above.',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.px,
                  color: Colors.blue),
            ),
            sizedBoxHeight15,

            Container(
              height: Adaptive.h(6),
              width: Adaptive.w(100),
              decoration: BoxDecoration(border: Border.all(color: black),
              borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Choose Document',style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.px,
                    ),),
                  const  Spacer(),
                   const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ) ,
            sizedBoxHeight30,
            Row(
              children: [
                Text('Upload Document',style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.px,
                    ),),
                    sizedBoxWidth20,
                    Text('Why?',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.px,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  color: Colors.blue),)
              ],
            ),
            sizedBoxHeight20,
            Container(
              height: Adaptive.h(25),
              width: Adaptive.w(100),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black26
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.photo_camera_rounded,color: grey,),
                  sizedBoxHeight10,
                     Text('Upload Photo',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.px,
                  // decoration: TextDecoration.underline,
                  // decorationColor: Colors.blue,
                  color: Colors.blue),)
                ],
              ),
            ),
            sizedBoxHeight40,
            ButtonWidget(backgroundColor: buttonColor, title: 'Save Document', textColor: black,heights: Adaptive.h(6),size: 15.px,)
          ],
        ),
      ),
    );
  }
}
