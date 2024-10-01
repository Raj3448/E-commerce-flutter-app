

import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/components/textfield_custom.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BankDetailsScreen extends StatelessWidget {
  const BankDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Adaptive.w(3) ),
        child: SingleChildScrollView(
          child: Column(
            children: [
               sizedBoxHeight15,
                Text(
                  'To get GST invoice and tax benefits, please provide GST Number above.',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.px,
                      color: Colors.blue),
                ),
                sizedBoxHeight20,
                customtextfieldregister(hinttext:'', titile: 'Account Number'),
                              sizedBoxHeight20,
                                            customtextfieldregister(hinttext:'', titile: 'Beneficiary Name'),
                                                                        sizedBoxHeight20,
        
                                              customtextfieldregister(hinttext:'', titile: 'Bank Name'),
                              sizedBoxHeight20,
                                            customtextfieldregister(hinttext:'', titile: 'IFSC Code'),
                                            sizedBoxHeight20,
        
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                 Column(
                                                  children: [
                                                    Image.asset('assets/images/bankdetails.png'),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(2.7)),
                                                      height: Adaptive.h(6),
                                                      decoration: BoxDecoration(
                                                        color: buttonColor,
        
                                                      ),
                                                      child: Center(child: Text('Upload photo',style:  GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.px,
                      ),),),
                                                    )
                                                  ],
                                                 ),
                                                 Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text('Upload one of the below\n documents',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                    ),),
                             Text('1.Cancelled Cheque',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                      color: grey
                    ),),
                         Text('2.Passbook',style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                      color: grey
                    ),)
                                                  ],
                                                 )
                                              ],
                                            ),
                                            sizedBoxHeight15,
                                            
            ButtonWidget(backgroundColor: buttonColor, title: 'Save Document', textColor: black,heights: Adaptive.h(6),size: 15.px,)
                                                    ,sizedBoxHeight40,

            ],
          ),
        ),
      ),
    );
  }
}