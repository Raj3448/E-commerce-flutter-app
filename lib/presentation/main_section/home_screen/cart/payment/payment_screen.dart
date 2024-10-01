import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/order_details/order_details_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
            )),
        title: Text(
          'Payment',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxHeight20,
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: Adaptive.h(3)),
                decoration: BoxDecoration(
                    color: Color(0xff0A84FF).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(Adaptive.w(3))),
                child: Row(
                  children: [
                    Text(
                      'Total Amount',
                      style: GoogleFonts.poppins(
                          fontSize: 15.px,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A84FF)),
                    ),
                    sizedBoxWidth10,
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff0A84FF),
                    ),
                    Spacer(),
                    Text(
                      '₹2,085',
                      style: GoogleFonts.poppins(
                          fontSize: 15.px,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A84FF)),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight20,
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: Adaptive.h(3)),
                decoration: BoxDecoration(
                    color: Color(0xffDFFFDE),
                    borderRadius: BorderRadius.circular(Adaptive.w(3))),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹500 off',
                          style: GoogleFonts.poppins(
                              fontSize: 15.px,
                              fontWeight: FontWeight.w500,
                              color: Colors.green),
                        ),
                        Text(
                          'Claim now with payment offers',
                          style: GoogleFonts.poppins(
                              fontSize: 13.px,
                              fontWeight: FontWeight.w500,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    sizedBoxWidth10,
                    // Icon(Icons.keyboard_arrow_down,color: Color(0xff0A84FF) ,),
                    Spacer(),
                    Image.asset('assets/images/axis.png')
                    // Text(
                    //   '₹2,085',
                    //   style: GoogleFonts.poppins(
                    //       fontSize: 15.px,
                    //       fontWeight: FontWeight.w500,
                    //       color: Color(0xff0A84FF)),
                    // ),
                  ],
                ),
              ),
              sizedBoxHeight20,
              ListTileWidget(image: 'payment1', title: 'Save Options').onTap(() {
                                showAlertDialog(context);

              }),
              sizedBoxHeight20,
              Container(
                  //  height: Adaptive.h(10),
                  padding: EdgeInsets.all(10),
                  // padding:
                  //     EdgeInsets.symmetric(horizontal: 10, vertical: Adaptive.h(3)),
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(Adaptive.w(3))),
                  child: ListTile(
                    leading: Image.asset('assets/images/payment2.png'),
                    title: Text(
                      "Upi",
                      style: GoogleFonts.poppins(
                          fontSize: 15.px,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    subtitle: Text(
                      "Pay by any UPI app",
                      style: GoogleFonts.poppins(
                          fontSize: 11.px,
                          fontWeight: FontWeight.w400,
                          color: Colors.green),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: Adaptive.w(8),
                    ),
                  )).onTap(() {
                showAlertDialog(context);
              }),
              sizedBoxHeight20,
              Container(
                  //  height: Adaptive.h(10),
                  //  padding: EdgeInsets.all(10),
                  // padding:
                  //     EdgeInsets.symmetric(horizontal: 10, vertical: Adaptive.h(3)),
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(Adaptive.w(3))),
                  child: ListTile(
                    leading: Image.asset('assets/images/payment3.png'),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit / Debit / ATM Card",
                          style: GoogleFonts.poppins(
                              fontSize: 15.px,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          "Add and secure card as per RBI guideliness",
                          style: GoogleFonts.poppins(
                              fontSize: 10.px,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      "5% Cashback on Axis bank card",
                      style: GoogleFonts.poppins(
                          fontSize: 11.px,
                          fontWeight: FontWeight.w400,
                          color: Colors.green),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_down,
                      size: Adaptive.w(8),
                    ),
                  )).onTap(() {
                                    showAlertDialog(context);

                  }),
              sizedBoxHeight20,
              ListTileWidget(image: 'payment4', title: 'Net Banking').onTap(() {
                                showAlertDialog(context);

              }),
              sizedBoxHeight20,
              ListTileWidget(image: 'payment5', title: 'Wallets').onTap(() {
                                showAlertDialog(context);

              }),
              sizedBoxHeight20,
              ListTileWidget(image: 'payment6', title: 'Cash on Delivery').onTap(() {
                                showAlertDialog(context);

              }),
            ],
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: whiteColor,
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Lottie animation
              Lottie.asset(
                  'assets/images/successpayment.json', // Replace 'assets/animation.json' with the path to your Lottie animation file
                  width: 200,
                  height: 150,
                  fit: BoxFit.fill),
              // SizedBox(height: 20),
              // Content
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Payment Done!\nSuccessfully',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 22.px, fontWeight: FontWeight.w600),
                ),
              ),
              // SizedBox(height: 20),
              // Button
              ButtonWidget(
                  backgroundColor: buttonColor,
                  title: 'Track',
                  textColor: black,
                  widths: Adaptive.w(60),
                  heights: Adaptive.h(6)).onTap(() {
                                    Get.to(()=> OrderDetailsScreen());

                  }),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Adaptive.h(10),
        padding: EdgeInsets.all(10),
        // padding:
        //     EdgeInsets.symmetric(horizontal: 10, vertical: Adaptive.h(3)),
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(Adaptive.w(3))),
        child: ListTile(
          leading: Image.asset('assets/images/$image.png'),
          title: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 15.px,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_down,
            size: Adaptive.w(8),
          ),
        ));
  }
}
