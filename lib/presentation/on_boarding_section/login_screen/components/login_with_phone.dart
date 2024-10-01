


import 'package:ecommerce_seller/presentation/on_boarding_section/otp/otp_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenWithPhone extends StatelessWidget {
  const LoginScreenWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text('Mobile Number',style: GoogleFonts.poppins(
            //     fontSize: 16.sp,
            //     fontWeight: FontWeight.w500
                
            //   ),),
            // ),
            SizedBox(
              height: 1.h,
            ),
            TextField(
             decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,

               // label: Text('Mobile Number'),
               labelText: 'Mobile Number',
               labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14.px,color: black),
               border: OutlineInputBorder(
                borderSide: BorderSide(color: black,
                ),

                borderRadius: BorderRadius.circular(10)
               ),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: grey)
               ),
              //  border: OutlineInputBorder(borderSide: BorderSide.none),
               hintText: '+91 | Mobile number ',
               hintStyle: TextStyle(
                color: grey.withOpacity(0.3),
               ),
              contentPadding: EdgeInsets.all(10)
             ),
             
             
            ),
                                                SizedBox(height: Adaptive.h(2),),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Checkbox(
            //           value: true, // Set the initial value of the checkbox
            //           onChanged: (bool? value) {
            //             // Define a function to handle changes in the checkbox state
            //             print('Checkbox value changed to: $value');
            //           },
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(4.0),
            //             side: BorderSide(color: Color(0XFFFFDC80)),
            //           ),
            //           checkColor:Colors.white, // Color of the check mark
            //           activeColor: Color(0XFFFFDC80), // Color of the box when checked
            //           focusColor: Color(0XFFFFDC80),
                      
            //         ),
            sizedBoxHeight10,

                     RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Loging Using',
                        style: GoogleFonts.roboto(fontSize: 16.sp,color: Colors.black)
                      ),
                      TextSpan(
                        text: ' Password',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue, // Color of the word "Astrologer"
                          fontWeight: FontWeight.w300, // Optional: You can also apply other styles
                        decoration: TextDecoration.underline,
                        decorationColor:  Colors.blue

                        
                        ),
                      ),
                    ]
                  )
                     )
          ],
        ),
        SizedBox(height: Adaptive.h(8),),
        InkWell(
           onTap: () {
             Get.to(()=> OtpScreen());
           },
          child: ButtonWidget(backgroundColor:buttonColor , title: 'Get Otp', textColor: Colors.white,heights: Adaptive.h(6),)),
        SizedBox(height: 2.h,),
        InkWell(
          onTap: () {
            // Get.to(()=> CreateAccountScreeen());
          },
          child: RichText(text: TextSpan(
            children: [
              TextSpan(
                text: 'By continuing, I agree of the',
               style: GoogleFonts.roboto(
                color: Color(0XFF505050),
               ),
               
              ),
              TextSpan(
                text: ' Terms of Use',
                style: GoogleFonts.roboto(
                  color: buttonColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.px
                )
              ),
               TextSpan(
                text: '&',
               style: GoogleFonts.roboto(
                color: Color(0XFF505050),
               ),
               
              ),
               TextSpan(
                text: ' Privacy \npolicy ',
               style: GoogleFonts.roboto(
               color: buttonColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.px
               ),
               
              ),
            ]
          )),
        ),
       
          ],
        ),
      ),
    );
  }
}