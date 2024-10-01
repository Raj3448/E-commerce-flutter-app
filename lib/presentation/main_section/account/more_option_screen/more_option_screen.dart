

import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/about_us/about_us_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/manage_adress/manage_address_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/terms_condition/terms_and_condition_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/verificationand_bank_details.dart';
import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class MoreOptionScreen extends StatelessWidget {
  const MoreOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {

 List<String> titles=[
  'Verification / Bank Details',
  'Raise a Complaint/ Escalation',
  'Address',
  'Rate us',
  'Share App with your friends',
  'About App',
  'Terms & Consitions'
 ];

    return Scaffold(
         appBar: AppBar(
        backgroundColor: chatColor,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios,size: 18.sp,)),
        title:             Text('More Options',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
        actions: [
          GestureDetector(
                              onTap: () {
                                Get.to(() => NotificationScreen());
                              },
                              child: Image.asset('assets/images/appbar1.png')),
                          sizedBoxWidth30,
                          Image.asset('assets/images/appbar2.png'),
                          sizedBoxWidth30,
                          Image.asset('assets/images/carbon_delivery.png'),
                          sizedBoxWidth40,


        ],
      ),
      body: Column(
        children: [
          SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  
                  if(index==2){
                    Get.to(()=>const ManageAddresScreen());
                  }else if(index==6){
                                        Get.to(()=>const PrivacyAndPolicyScreen());

                  }else if(index==5){
                    Get.to(()=>AboutUsScreen());
                    
                  }else if(index==1){
showAlertDialog(context, "Write To Us", "Raise A Complaint", "Track Complaint Status");
                  }else if(index==0){
                    Get.to(()=>VerificationAndBankDetails());
                  }
                },
                child: SizedBox(
                  height: Adaptive.h(8),
                  // width: Adaptive.w(100),
                  child: Flex(
                    // leading: Image.asset('assets/images/more${index+1}.png'),
                    // title: Text('Verification / Bank Details',style: GoogleFonts.poppins(fontSize: 19.px,fontWeight: FontWeight.w400),),
                    mainAxisSize: MainAxisSize.min,
                   direction: Axis.horizontal,
                   children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset('assets/images/more${index+1}.png')),
                      Expanded(
                        flex: 4,
                        child: 
                     Text(titles[index],textAlign: TextAlign.left,style: GoogleFonts.poppins(fontSize: 15.px,fontWeight: FontWeight.w400),),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.keyboard_arrow_right))
                   ],
                  ),
                ),
              );
            },),
          ),
          Divider(
            color: grey,
            thickness: 1,
            height: 2,
          ),
          sizedBoxHeight20,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: Adaptive.w(3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('App Version',style: GoogleFonts.poppins(fontSize: 15.px,fontWeight: FontWeight.w400),)
          ,
                Text('9.2.3_197.',style: GoogleFonts.poppins(fontSize: 15.px,fontWeight: FontWeight.w400),)
          
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: Adaptive.h(6)),
        child: Container(
          width: Adaptive.w(90),
          height: Adaptive.h(6),
          decoration: BoxDecoration(color: chatColor,
          borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/octicon_sign-out-24.png'),
              Text('Sign Out',style: GoogleFonts.poppins(fontSize: 15.px,fontWeight: FontWeight.w700),)
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context, String titleText, String contentLine1, String contentLine2) {
  // Create a close button
  final closeButton = IconButton(
    icon: Icon(Icons.close),
    onPressed: () => Navigator.pop(context),
  );

  // Build the alert dialog
  AlertDialog alert = AlertDialog(
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text( titleText, style: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold)),
            closeButton,
          ],
        ),
        Divider(color: Colors.black26,)
      ],
    ),
    content: Text(
      "$contentLine1\n\n$contentLine2",
      style: GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w600),
    ),
  );

  // Show the dialogq 
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}