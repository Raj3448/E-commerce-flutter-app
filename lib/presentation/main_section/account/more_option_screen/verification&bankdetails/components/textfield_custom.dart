
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Column customtextfieldregister({
  required String hinttext,
  Widget? icons,
  Widget? actionicon,
  String? titile
}) {
  return Column(
    children: [
      Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        titile??"",
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                    sizedBoxHeight10,
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 6.h,
        child: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hinttext,
              prefixIcon: icons,
              suffixIcon: actionicon,
              hintStyle:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.1)),
            ),
          ),
        ),
      ),
    ],
  );
}