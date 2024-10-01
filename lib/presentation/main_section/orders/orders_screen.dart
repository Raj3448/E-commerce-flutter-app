import 'dart:developer';

import 'package:ecommerce_seller/presentation/main_section/orders/componnents/cancelled_widget.dart';
import 'package:ecommerce_seller/presentation/main_section/orders/componnents/delivered_widget.dart';
import 'package:ecommerce_seller/presentation/main_section/orders/controller/order_contorller.dart';
import 'package:ecommerce_seller/presentation/main_section/search_screen/search_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/bottomsheet_function.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'componnents/active_widget.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    final order = Get.put(OrderController());
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
                    sizedBoxWidth40,
                    Text(
                      'My Orderss',
                      style: GoogleFonts.poppins(
                          fontSize: 18.px, fontWeight: FontWeight.w500),
                    ),
                    // Image.asset('assets/images/home_screen_logo.png',color: grey,),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          // Get.to(() => NotificationScreen());
                        },
                        child: Image.asset('assets/images/appbar1.png')),
                    sizedBoxWidth30,
                    GestureDetector(
                        onTap: () {
                          showCustomBottomSheet(context);
                        },
                        child: Image.asset('assets/images/appbar2.png')),
                    sizedBoxWidth30,
                    Image.asset('assets/images/carbon_delivery.png'),
                    sizedBoxWidth40,
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
                              'Active',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(16),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'active'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                          order.changingTabBarView('active', 0);
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
                              'Delivered',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(22),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'delivered'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                          order.changingTabBarView('delivered', 1);
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
                              'Cancelled',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.px, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: Adaptive.w(24),
                              child: Divider(
                                height: 0,
                                thickness: 3,
                                color: order.selectedTabBar.value == 'cancelled'
                                    ? black
                                    : buttonColor,
                              ),
                            )
                          ],
                        ).onTap(() {
                          order.changingTabBarView('cancelled', 2);
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
            height: Adaptive.h(70),
            width: Adaptive.w(100),
            // color: black,
            child: PageView(
              controller: controller,
              physics: NeverScrollableScrollPhysics(),
              children: [ActiveWidget(), DeliveredWidget(), CancelledWidget()],
            ),
          )
        ],
      ),
    );
  }
}
