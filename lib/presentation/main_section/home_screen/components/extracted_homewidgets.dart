import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeCatWidgets extends StatelessWidget {
  const HomeCatWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              // color: grey,
              height: Adaptive.h(15),
              width: Adaptive.w(100),
          
              child: ListView.separated(
     shrinkWrap: true,
     physics: AlwaysScrollableScrollPhysics(),
     scrollDirection: Axis.horizontal,
     itemCount: 4,
     separatorBuilder: (context, index) => sizedBoxWidth30,
     itemBuilder: (context, index) {
       return Column(
         children: [
           Image.asset('assets/images/homecat${index + 1}.png'),
           Text(
             'Grocery',
             style: GoogleFonts.poppins(
                 fontSize: 12.px, fontWeight: FontWeight.w400),
           )
         ],
       );
     },
              ),
            ),
          );
  }
}