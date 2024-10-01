import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/bottomsheet_function.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ReturnScreen extends StatelessWidget {
  const ReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'Returns & Refunds',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(() => NotificationScreen());
              },
              child: Image.asset('assets/images/appbar1.png')),
          sizedBoxWidth20,
          GestureDetector(
              onTap: () {
                showCustomBottomSheet(context);
              },
              child: Image.asset('assets/images/appbar2.png')),
          sizedBoxWidth20,
          Image.asset('assets/images/appbar3.png'),
          sizedBoxWidth20,
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: Adaptive.h(25),
              child: Center(
                  child: Lottie.asset('assets/images/box.json',
                      fit: BoxFit.fill))),
          Text(
            'No Returns Bookeds',
            style: GoogleFonts.poppins(
                fontSize: 15.px, fontWeight: FontWeight.w500),
          ),
          sizedBoxHeight60,
          ButtonWidget(
            backgroundColor: buttonColor,
            title: 'Click Here',
            textColor: black,
            heights: Adaptive.h(6),
          ).onTap(() {
            _showAlertDialog(context);
          })
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.white, // Background color for the dialog
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          contentPadding: EdgeInsets.zero, // Remove padding around content

          children: [
            Container(
              // height: Adaptive.h(30),
              width: Adaptive.w(90),
              child: Column(
                 mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: Adaptive.w(100),
                    height: Adaptive.h(10),
                    color: chatColor, // Background color for the title
                    // padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Returns & Refunds',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 17.px,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: const Icon(
                                Icons.close,
                                color: black,
                              ))
                        ],
                      ),
                    ),
                  ),
                  sizedBoxHeight20,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '7 Days Return',
                        style: GoogleFonts.poppins(
                            fontSize: 17.px, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '''In case, you have recieved damaged,defective or incorrect products, Book a return within 7 days of the date of delivery and get your money back,guaranteed!''',
                      style: GoogleFonts.poppins(
                          fontSize: 12.px, fontWeight: FontWeight.w400),
                    ),
                  ),
                   sizedBoxHeight60,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'One Return per Consignment',
                        style: GoogleFonts.poppins(
                            fontSize: 17.px, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '''One return request per consignmentis applicable. Irrespective of no. of product returned.''',
                      style: GoogleFonts.poppins(
                          fontSize: 12.px, fontWeight: FontWeight.w400),
                    ),
                  ),
                   sizedBoxHeight60,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Instant Refund on Returns',
                        style: GoogleFonts.poppins(
                            fontSize: 17.px, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '''Get instant refund in your wallet once the return pickup is done''',
                      style: GoogleFonts.poppins(
                          fontSize: 12.px, fontWeight: FontWeight.w400),
                    ),
                  ),
                  sizedBoxHeight60
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
