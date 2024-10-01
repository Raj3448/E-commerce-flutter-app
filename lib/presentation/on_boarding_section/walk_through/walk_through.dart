

import 'package:ecommerce_seller/presentation/on_boarding_section/walk_through/walk_through_screen2.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WalkThroughScreen extends StatelessWidget {
  const WalkThroughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBoxHeight15,
            Image.asset('assets/images/logo2.png'),
            sizedBoxHeight20,
            Image.asset('assets/images/walkthrough1.png'),
        sizedBoxHeight20,
            Text('Looking for genuine \nauthenticity?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 34.px),)
         ,Text('Discover it right here, buy it now!',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14.px),),
         sizedBoxHeight30,
         GestureDetector(
          onTap: () {
            Get.to(()=>WalkThroughScreen2());
          },
          child: ButtonWidget(backgroundColor: buttonColor, title: 'Get Started', textColor: whiteColor))
            
          ],
        ),
      ),
    );
  }
}