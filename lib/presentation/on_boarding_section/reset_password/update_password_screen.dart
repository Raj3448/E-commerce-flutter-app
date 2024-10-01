import 'dart:developer';

import 'package:ecommerce_seller/presentation/on_boarding_section/reset_password/components/update_password_popup.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isObscure1 = false.obs;
    RxBool isObscure2 = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              sizedBoxHeight15,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Back',
                  style: GoogleFonts.poppins(fontSize: 14.px, color: buttonColor),
                ),
              ),
              sizedBoxHeight20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Update Password',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 30.px),
                ),
              ),
              sizedBoxHeight30,
              Text(
                'Enter your email or mobile number and we’ll send a code your password to reset.',
                style: GoogleFonts.poppins(
                    fontSize: 12.px, fontWeight: FontWeight.w400, color: grey),
              ),
              sizedBoxHeight20,
              Obx(() {
                return TextField(
                  obscureText: isObscure1.value,
                  decoration: InputDecoration(
                      // label: Text('Mobile Number'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: grey.withOpacity(0.3))),
                      labelText: 'New Password',
                      labelStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: black),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: black,
                          ),
                          borderRadius: BorderRadius.circular(10)),

                      //  border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Jay kumar001',
                      hintStyle: TextStyle(
                        color: grey.withOpacity(0.3),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            isObscure1.value = !isObscure1.value;
                            log(isObscure1.value.toString());
                          },
                          child: isObscure1.value
                              ? Image.asset('assets/images/clicked.png')
                              : Image.asset('assets/images/notclicked.png')),
                      contentPadding: EdgeInsets.all(10)),
                );
              }),
              sizedBoxHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/info.png'),
                  Text(
                    'Your password must be at least six characters and\ncannot contain spaces or match your email address.',
                    style: GoogleFonts.poppins(
                        fontSize: 11.px,
                        fontWeight: FontWeight.w300,
                        color: grey),
                  )
                ],
              ),
              sizedBoxHeight50,
              Obx(() {
                return TextField(
                  obscureText: isObscure2.value,
                  decoration: InputDecoration(
                      // label: Text('Mobile Number'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: grey.withOpacity(0.3))),
                      labelText: 'Confirm New Password',
                      labelStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: black),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: black,
                          ),
                          borderRadius: BorderRadius.circular(10)),

                      //  border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Jay kumar001',
                      hintStyle: TextStyle(
                        color: grey.withOpacity(0.3),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            isObscure2.value = !isObscure2.value;
                            log(isObscure1.value.toString());
                          },
                          child: isObscure2.value
                              ? Image.asset('assets/images/clicked.png')
                              : Image.asset('assets/images/notclicked.png')),
                      contentPadding: EdgeInsets.all(10)),
                );
              }),

              sizedBoxHeight50,
              GestureDetector(
                onTap: () {
                  showCustomDialog(context);
                },
                child: ButtonWidget(backgroundColor: buttonColor, title: 'SAVE UPDATE', textColor: whiteColor,heights: Adaptive.h(6),))
            ],
          ),
        ),
      ),
    );
  }
  

}
