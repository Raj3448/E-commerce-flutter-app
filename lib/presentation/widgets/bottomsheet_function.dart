


import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        height: Adaptive.h(40),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Help & Support',
                  style: GoogleFonts.poppins(fontSize:15.px,fontWeight: FontWeight.w600),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset('assets/images/bottomshee1.png'))
              ],
            ),
            Divider(
              color: black,
            ),
            sizedBoxHeight10,
             Text(
                  'Need help? Talk to our Customer Care',
                  style: GoogleFonts.poppins(fontSize:14.px,fontWeight: FontWeight.w400),
                ),
                HelpSupportExtractWidget(title: 'Talk to us',subTitle: 'Call time: 10AM - 9PM',image: 'bottomtile1',)
                  ,sizedBoxHeight10
                  ,HelpSupportExtractWidget(title: 'Chat with us',subTitle: 'App Account on Whatsapp',image: 'bottomtile2',)
                    ,sizedBoxHeight10
                  ,HelpSupportExtractWidget(title: 'Request a Callback',subTitle: 'Click here to get a call back',
                  image: 'bottomtile3',)

          ],
        ),
      );
    },
  );
}

class HelpSupportExtractWidget extends StatelessWidget {
  const HelpSupportExtractWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image
  });
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(8),
      color: Color(0xffD9D9D9).withOpacity(0.2),
      child: ListTile(
        title:Row(
          children: [
            Text(
      title,
      style: GoogleFonts.poppins(fontSize:16.px,fontWeight: FontWeight.w600),
    ),sizedBoxWidth10,
    Icon(Icons.arrow_forward_ios,size: 16.sp,weight:3,)
          ],
        ), 
        subtitle:   Text(
      subTitle,
      style: GoogleFonts.poppins(fontSize:14.px,fontWeight: FontWeight.w400,color: grey),
    ) ,
    trailing: Image.asset('assets/images/$image.png'),
      ),
    );
  }
}