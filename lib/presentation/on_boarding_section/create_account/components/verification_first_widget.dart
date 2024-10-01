import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utilz/colors.dart';

class VerificationFirstWidget extends StatelessWidget {
  const VerificationFirstWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Adaptive.h(25),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffFFEEAE),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Get your shop verified',
                style: GoogleFonts.poppins(
                    fontSize: 18.px, fontWeight: FontWeight.w600),
              )),
              sizedBoxHeight10,
          Align(
                                  alignment: Alignment.centerLeft,

            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
              children: [
                TextSpan(
                  text:'In ',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18.px,color: black)
                ),
                   TextSpan(
                  text:'just 10 mins.',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18.px,color: buttonColor)
                ),
              ]
            )),
          ),
          SizedBox(
            height: Adaptive.h(10),
            // color: black,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('GST Number',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 18.px),))
         , SizedBox(
          height: Adaptive.h(7),
           child: TextField(
            // controller: ,
            
               decoration: InputDecoration(
                 fillColor: whiteColor,
                 filled: true,
                 hintText: 'Enter GST Number',
                 hintStyle: GoogleFonts.poppins(fontSize: 14.px,fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: buttonColor))
               ),
           ),
         ),
         sizedBoxHeight10,
         Text('* To get GST invoice and tax benefits, please provide your\nGST Number above.',
         style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 10.px,color:Color(0xff4392F9) ),)
        ],
      ),
    );
  }
}
