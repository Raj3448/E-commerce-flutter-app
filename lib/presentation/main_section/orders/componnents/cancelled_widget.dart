
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class  CancelledWidget extends StatelessWidget {
  const CancelledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Adaptive.h(70),
      width: Adaptive.w(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/orders.png'),
          Text(
            'No Cancelled Orders',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16.px),
          ),
          sizedBoxHeight30,
          ButtonWidget(
            backgroundColor: chatColor,
            title: 'Continue Shopping',
            textColor: black,
            heights: Adaptive.h(6),
            size: 18.px,
          )
        ],
      ),
    );
  }
}
