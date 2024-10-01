import 'dart:developer';

import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/controller/create_accopunt_controller.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/create_account_screen2.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ActiveWidget extends StatelessWidget {
  const ActiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
        final controller=Get.put(CreateAccountController());

    return SizedBox(
      // height: Adaptive.h(70),
      width: Adaptive.w(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/orders.png'),
          Text(
            'No Active Orders',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16.px),
          ),
          sizedBoxHeight30,
          GestureDetector(
            onTap: () {
               print("which one is cliking");
             
            },
            child: ButtonWidget(
              backgroundColor: chatColor,
              title: 'Continue Shopping',
              textColor: black,
              heights: Adaptive.h(6),
              size: 18.px,
            ).onTap(()async {
                            print("which one is cliking");
//  controller.selectedScreen.value='pincode';
//  controller.indexes.value=1;
//  await Future.delayed(Duration(seconds: 1));
//  log("is clicked ${controller.indexes}");
Get.to(()=>CreateAccountScreen2(ishome: true,));
             }),
          )
        ],
      ),
    );
  }
}
