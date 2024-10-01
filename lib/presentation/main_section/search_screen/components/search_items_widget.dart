


import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utilz/sized_box.dart';

class SearchingItems extends StatelessWidget {
  const SearchingItems({
    super.key,
    required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: black
        )
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            Text(title,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.px),),
            sizedBoxWidth20
           ,Image.asset('assets/images/search_chip.png')
          ],
        ),
      ),
    );
  }
}