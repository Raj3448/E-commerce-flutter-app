
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Adaptive.h(50),
      // color:grey
      
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text: 'Fast Services, \n',
                style: GoogleFonts.poppins(fontSize: 21.px,fontWeight: FontWeight.w500,color: black)
                ),
                 TextSpan(text: 'Better Experience\n',
                style: GoogleFonts.poppins(fontSize: 21.px,fontWeight: FontWeight.w500,color: buttonColor)
                ),
                 TextSpan(text: 'for you',
                style: GoogleFonts.poppins(fontSize: 21.px,fontWeight: FontWeight.w500,color: black
                )
                ),
              ]
            )),
          ),
          sizedBoxHeight50,
          Image.asset('assets/images/walk3.png'),
          // Spacer(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
             
          //     CircleAvatar(
          //       radius: Adaptive.w(1),
          //       backgroundColor: grey,
          //     ),
          //                             sizedBoxWidth15,

          //      CircleAvatar(
          //       radius: Adaptive.w(1),
          //       backgroundColor: grey,
          //     ),
          //                   sizedBoxWidth15,

          //      Container(
          //       width: Adaptive.w(8),
          //       height: Adaptive.h(1),
          //      decoration: BoxDecoration(
          //        color: buttonColor,
          //        borderRadius: BorderRadius.circular(Adaptive.w(5))
          //      ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }}