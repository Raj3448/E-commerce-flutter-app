import 'dart:developer';

import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/components/bank_details._screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/components/gst_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/components/verification.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/controller/verifivation_controller.dart';
import 'package:ecommerce_seller/presentation/main_section/orders/controller/order_contorller.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../widgets/bottomsheet_function.dart';

class VerificationAndBankDetails extends StatelessWidget {
   VerificationAndBankDetails({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
        final order = Get.put(VerificationController());

    return Scaffold(
      body: Column(
        children: [
            Container(
            height: Adaptive.h(20),
            width: Adaptive.w(100),
            color: chatColor,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // sizedBoxHeight50,
                sizedBoxHeight50,
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_ios,size: 18.px,)),
                    sizedBoxWidth40,
                    Text(
                      'Verification/Bank Details',
                      style: GoogleFonts.poppins(
                          fontSize: 16.px, fontWeight: FontWeight.w500),
                    ),
                    // Image.asset('assets/images/home_screen_logo.png',color: grey,),
                    // Spacer(),
                    // GestureDetector(
                    //     onTap: () {
                    //       // Get.to(() => NotificationScreen());
                    //     },
                    //     child: Image.asset('assets/images/appbar1.png')),
                    // sizedBoxWidth30,
                    // GestureDetector(
                    //     onTap: () {
                    //        showCustomBottomSheet(context);
                    //     },
                    //     child: Image.asset('assets/images/appbar2.png')),
                    // sizedBoxWidth30,
                    // Image.asset('assets/images/carbon_delivery.png'),
                    // sizedBoxWidth40,
                  ],
                ),
                Spacer(),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Obx(() {
                      return Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'GST',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(14),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'gst'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                          order.changingTabBarView('gst', 0);
                          controller.animateToPage(order.selectedIndex.value,
                              duration: const Duration(microseconds: 100),
                              curve: Curves.linear);
                        }),
                      );
                    }),
                    Obx(() {
                      return Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Verification',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(26),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'verification'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                          order.changingTabBarView('verification', 1);
                          controller.animateToPage(order.selectedIndex.value,
                              duration: Duration(microseconds: 100),
                              curve: Curves.linear);
                        }),
                      );
                    }),
                    Obx(() {
                      return Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Bank Details',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(28),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'details'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                        order.changingTabBarView('details', 2);
                          controller.animateToPage(order.selectedIndex.value,
                              duration: Duration(microseconds: 100),
                              curve: Curves.linear);

                          log("comes");
                        }),
                      );
                    }),
                  ],
                ),
                // sizedBoxHeight20,
              ],
            ),
          ),
          SizedBox(
            height: Adaptive.h(80),
            // color: black,
            child: PageView(
  controller: controller,
  children: [
    GstScreen(),
    VerificationScreen(),
    BankDetailsScreen(),
  ],

          ))
        ],
      ),
    );
  }
}