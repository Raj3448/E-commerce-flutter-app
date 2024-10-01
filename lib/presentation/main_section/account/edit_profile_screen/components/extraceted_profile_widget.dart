
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../widgets/button_widgets.dart';

class ExtractedProfileWidget extends StatelessWidget {
  const ExtractedProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Column(
              children: [
                sizedBoxHeight10,
             Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shop Name',
                      style: GoogleFonts.roboto(
                          fontSize: 17.px, fontWeight: FontWeight.w500),
                    ),
                  ),
                            customtextfieldregister(hinttext: 'NewTiq'),
                              sizedBoxHeight15,
             Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shop Owner Name',
                      style: GoogleFonts.roboto(
                          fontSize: 17.px, fontWeight: FontWeight.w500),
                    ),
                  ),
                            customtextfieldregister(hinttext: 'Rakesh'),
                               sizedBoxHeight15,
             Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mobile Number',
                      style: GoogleFonts.roboto(
                          fontSize: 17.px, fontWeight: FontWeight.w500),
                    ),
                  ),
                            customtextfieldregister(hinttext: '+91| 1234567890'),
                                                sizedBoxHeight15,
             Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Address',
                      style: GoogleFonts.roboto(
                          fontSize: 17.px, fontWeight: FontWeight.w500),
                    ),
                  ),
                            customtextfieldregister(hinttext: 'example@gmail.com'),
          sizedBoxHeight20,
               ButtonWidget(backgroundColor: chatColor, title: 'Save Details', textColor: black,heights: Adaptive.h(6))
              ],
            ),
          );
  }
  
  Container customtextfieldregister({
    required String hinttext,
    Widget? icons,
    Widget? actionicon,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 7.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            prefixIcon: icons,
            suffixIcon: actionicon,
            hintStyle:
                TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}