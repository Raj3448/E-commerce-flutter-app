import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/bottomsheet_function.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: chatColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
            )),
            centerTitle: false,
        title: Text(
          'Apply Coupons',
          style:
              GoogleFonts.poppins(fontSize: 16.px, fontWeight: FontWeight.w500),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(() => NotificationScreen());
              },
              child: Image.asset('assets/images/appbar1.png')),
          sizedBoxWidth30,
          Image.asset('assets/images/appbar2.png').onTap(() {
            showCustomBottomSheet(context);
          }),
          sizedBoxWidth30,
          Image.asset('assets/images/carbon_delivery.png'),
          sizedBoxWidth40,
        ],
      ),
      body: 
      Padding(
        padding:  EdgeInsets.symmetric(horizontal:Adaptive.w(2)),
        child: Column(
          children: [
            sizedBoxHeight20,
            Expanded(
              child: ListView.separated(
                itemCount: 2,
                separatorBuilder: (context, index) => sizedBoxHeight30,
                itemBuilder: (context, index) {
                return  Container(
                margin: EdgeInsets.symmetric(horizontal: Adaptive.w(2)),
                // height: Adaptive.h(20),
                width: Adaptive.w(90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.sp),bottomLeft: Radius.circular(12.sp)),
                border: Border.all(color: grey)
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/couponimg${index+1}.png',fit: BoxFit.fill,),
                       Positioned(
                         left: Adaptive.w(4),
                         top: Adaptive.h(0.2),
                        child: Text('4% FLAT OFF',style: GoogleFonts.poppins(color: whiteColor,fontSize: 21.px,fontWeight: FontWeight.w600),))
                      ],
            
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: Adaptive.w(3)),
                      child: Column(
                        children: [
                          Text('Get flat 4% Off on your next  order',style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w500),)
                         ,sizedBoxHeight10,
                          Text('Exclusive 4% Off for you on a Min. Order Value of Rs.50000. Max. Discount: Rs.6,000.',
                          style: GoogleFonts.poppins(fontSize: 11.px,fontWeight: FontWeight.w500),),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Ends on: 31-March-2024',
                            style: GoogleFonts.poppins(fontSize: 11.px,fontWeight: FontWeight.w500,color: red),),
                          ),
            sizedBoxHeight20,
            
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: Adaptive.w(3),
              dashColor: Colors.black,
              // dashGradient: [Colors.red, Colors.blue],
              dashRadius: 0.0,
              dashGapLength: 6.0,
              dashGapColor: Colors.white,
              // dashGapGradient: [Colors.red, Colors.blue],
              dashGapRadius: 0.0,
            ),
            sizedBoxHeight30,
            Row(
              children: [
                Text('Code: FLASH25',style: GoogleFonts.poppins(fontSize: 13.px,fontWeight: FontWeight.w500),),
                Spacer(),
                 Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Adaptive.w(4), vertical: Adaptive.h(1)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.sp),
                                color:  Color(0xff0A84FF).withOpacity(0.3),
                                border: Border.all(
                                  color: Color(0xff0A84FF).withOpacity(0.4),
                                )),
                            child: Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(color: buttonColor),
                              ),
                            ),
                          )
              ],
            ),
            sizedBoxHeight20
                        ],
                      ),
                    )
                  ],
                ),
              );
              },),
            )
           
          ],
        ),
      ),
    );
  }
}
