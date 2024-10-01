
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.isColor
  });
  final String title1;
  final String title2;
  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 12.sp,vertical: Adaptive.h(2.5)),
            decoration: BoxDecoration(
              border: Border.all(color: grey),
                color:isColor==true? Color(0xffF2F2F2):whiteColor,
                // borderRadius: BorderRadius.circular(10.sp)),
            ),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                // Image.asset('assets/images/$.png'),
                // sizedBoxWidth20,
                Expanded(
                  flex: 1,
                  child: Text('$title1  ',textAlign: TextAlign.start, style: GoogleFonts.poppins(
                          // decoration: TextDecoration.lineThrough,
                          // decorationColor: Colors.grey,
                           color:grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.px,
                        
                        )),
                ),
                      // Spacer(),
 Expanded(
                  flex: 1,
                  child: Text('$title2',textAlign: TextAlign.start, style: GoogleFonts.poppins(
                          // decoration: TextDecoration.lineThrough,
                          // decorationColor: Colors.grey,
                           color:black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.px,
                        
                        )),
                ),              ],
            ),
          );
  }
}
