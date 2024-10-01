import 'dart:developer';

import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/bottom_navigation_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/controller/bottom_navigation_controller.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderDetailsScreen extends StatelessWidget {
  OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottom = Get.put(BottomNavigationController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: buttonColor,
          // leading: IconButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     icon: Icon(
          //       Icons.arrow_back_ios,
          //       size: 18.sp,
          //     )),
          automaticallyImplyLeading: false,
          title: Text(
            'Order Details',
            style: GoogleFonts.poppins(
                fontSize: 18.px, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(2)),
          child: SizedBox(
            // width: Adaptive.w(100),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  sizedBoxHeight10,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Order ID- OD851648616468699',
                        style: GoogleFonts.poppins(
                            fontSize: 14.px,
                            color: grey,
                            fontWeight: FontWeight.w500),
                      )),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/cart1.png'),
                      sizedBoxWidth50,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Men Printed Shirt',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, fontSize: 13.px),
                          ),
                          sizedBoxHeight10,
                          Text(
                            'Seller: Unicorn',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: grey,
                                fontSize: 13.px),
                          ),
                          sizedBoxHeight10,
                          Row(
                            children: [
                              Text(
                                '₹2500',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.px),
                              ),
                              sizedBoxWidth40,
                              Text(
                                '2 Offers',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green,
                                    fontSize: 12.px),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  sizedBoxHeight20,
                  AnotherStepper(
                    stepperList: stepperData,
                    stepperDirection: Axis.vertical,
                    iconWidth:
                        30, // Height that will be applied to all the stepper icons
                    iconHeight:
                        30, // Width that will be applied to all the stepper icons
                  ),
                  sizedBoxHeight10,
                  Text(
                    'See All Updates',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontSize: 14.px),
                  ),
                  sizedBoxHeight20,
                  Divider(
                    color: grey.withOpacity(0.4),
                    thickness: 1,
                  ),
                  sizedBoxHeight20,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Shipping Details',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          // decoration: TextDecoration.underline,
                          // decorationColor: Colors.blue,
                          fontSize: 15.px),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Room number 2 Epic Vishal Nagar, Pune Maharashtra -411500 ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 12.px),
                    ),
                  ),
                  sizedBoxHeight20,
                  Divider(
                    color: grey.withOpacity(0.4),
                    thickness: 1,
                  ),
                  sizedBoxHeight10,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: black,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Product Details',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                // decoration: TextDecoration.underline,
                                // decorationColor: Colors.blue,
                                fontSize: 15.px),
                          ),
                        ),
                        sizedBoxHeight15,
                        ProductDetialsWidgets(
                          title1: 'Price (3 items)',
                          title2: '₹11,097',
                        ),
                        sizedBoxHeight15,
                        ProductDetialsWidgets(
                          title1: 'Discount',
                          title2: '-₹8,250',
                          isGreen: true,
                        ),
                        sizedBoxHeight15,
                        ProductDetialsWidgets(
                          title1: 'Buy more & save more',
                          title2: '-₹110',
                          isGreen: false,
                        ),
                        sizedBoxHeight15,
                        ProductDetialsWidgets(
                          title1: 'Coupons for you',
                          title2: '-₹170',
                          isGreen: false,
                        ),
                        sizedBoxHeight15,
                        ProductDetialsWidgets(
                          title1: 'Delivery Charges',
                          title2: 'Free Delivery ',
                          isGreen: true,
                        ),
                        Divider(
                          thickness: 1,
                          color: grey,
                        ),
                        sizedBoxHeight15,
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Total Amount',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    // decoration: TextDecoration.underline,
                                    // decorationColor: Colors.blue,
                                    fontSize: 16.px),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '₹2,847',
                                textAlign: TextAlign.end,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    // decoration: TextDecoration.underline,
                                    // decorationColor: Colors.blue,
                                    fontSize: 16.px),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  sizedBoxHeight20,
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
            height: Adaptive.h(8),
            width: Adaptive.w(100),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Adaptive.sp(22)),
                    topLeft: Radius.circular(Adaptive.sp(22))),
                border: Border.all(color: black)),
            child: GestureDetector(
              onTap: () {
                log("okey");
                  bottom.selectedIndex.value=0;
                        bottom.bottomNavigationIndexSelecting(0, 'home');
              },
              child: Center(
                  child: ButtonWidget(
                backgroundColor: buttonColor,
                title: 'Continue Shopping',
                textColor: whiteColor,
                heights: Adaptive.h(6),
              ).onTap(() {
                log("okey");
              
                  bottom.selectedIndex.value=0;
                        bottom.bottomNavigationIndexSelecting(0, 'home');
               Get.to(BottomNavigation());
              })
              ),
            )
            )
            );
  }

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText("Order Confirmed, March 16"),
        // subtitle: StepperText("Your order is being prepared"),
        iconWidget: Image.asset('assets/images/step1.png')),
    StepperData(
        title: StepperText("Delivered March 20"),
        // subtitle: StepperText(
        //     "Our delivery executive is on the way to deliver your item"),
        iconWidget: Image.asset('assets/images/step2.png')),
  ];
}

class ProductDetialsWidgets extends StatelessWidget {
  const ProductDetialsWidgets(
      {super.key,
      required this.title1,
      required this.title2,
      this.isGreen = false});
  final String title1;
  final String title2;
  final bool isGreen;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title1,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.blue,
                fontSize: 15.px),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            title2,
            textAlign: TextAlign.end,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: isGreen ? Colors.green : Colors.black,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.blue,
                fontSize: 15.px),
          ),
        ),
      ],
    );
  }
}
