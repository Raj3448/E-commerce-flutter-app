import 'package:ecommerce_seller/presentation/on_boarding_section/otp/otp_screen2.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(
                height: Adaptive.h(5),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                  Text(
                    'Back',
                    style: GoogleFonts.poppins(
                        fontSize: 14.px, color: buttonColor),
                  ),
                  // SizedBox(width: Adaptive.w(5),),
                  Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        fontSize: 14.px, color: buttonColor),
                  ),
                ],
              ),
              sizedBoxHeight40,
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create an account',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 30.px),
                  )),
              sizedBoxHeight50,
              CreateAccountWidget(label: 'Name', hintText: 'Name'),
              sizedBoxHeight30,
              CreateAccountWidget(
                  label: 'Mobile Number', hintText: 'Mobile Number *'),
              sizedBoxHeight30,
              CreateAccountWidget(label: 'Email', hintText: 'Email *'),
              sizedBoxHeight30,
              CreateAccountWidget(label: 'Password', hintText: 'Password *'),
              sizedBoxHeight30,
              Text(
                'We will send you an SMS to verify your email & mobile number',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300, fontSize: 10.3.px),
              ),
              sizedBoxHeight40,
              GestureDetector(
                onTap: () {
                  Get.to(()=>OtpScreen2());
                  
                },
                child: ButtonWidget(
                  backgroundColor: buttonColor,
                  title: 'CREATE ACCOUNT',
                  textColor: whiteColor,
                  heights: Adaptive.h(6),
                ),
              ),
              sizedBoxHeight20,
              InkWell(
                onTap: () {
                  // Get.to(()=> CreateAccountScreeen());
                },
                child: RichText(
                    text: TextSpan(children: [
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
                          fontSize: 14.px)),
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
                        fontSize: 14.px),
                  ),
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget(
      {super.key, required this.label, required this.hintText});
  final String label;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
    
      decoration: InputDecoration(
          // label: Text('Mobile Number'),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: grey.withOpacity(0.3))),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 14.px, color: black),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: black,
              ),
              borderRadius: BorderRadius.circular(10)),

          //  border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: TextStyle(
            color: grey.withOpacity(0.3),
          ),
          contentPadding: EdgeInsets.all(10)),

    );
  }
}
