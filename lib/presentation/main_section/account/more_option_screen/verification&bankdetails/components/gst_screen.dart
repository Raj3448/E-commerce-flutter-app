import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/verification&bankdetails/components/textfield_custom.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GstScreen extends StatelessWidget {
  const GstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Adaptive.w(3)),
        child: Column(
          children: [
            sizedBoxHeight20,
            customtextfieldregister(hinttext:'', titile: 'GST Number'),
            sizedBoxHeight15,
            Text(
              'To get GST invoice and tax benefits, please provide GST Number above.',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.px,
                  color: Colors.blue),
            ),
            sizedBoxHeight20,
            ButtonWidget(backgroundColor: buttonColor, title:'Save GST Number', textColor: black,heights: Adaptive.h(6),size: 15.px,)
         , sizedBoxHeight30,
         Text('GST not yet provided.',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.px,
                  ),)
         ],
        ),
      ),
    );
  }
}
