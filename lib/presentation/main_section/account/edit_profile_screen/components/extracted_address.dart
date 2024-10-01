import 'package:ecommerce_seller/presentation/main_section/account/edit_profile_screen/add_new_adreess.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ExtractedAddressWidget extends StatelessWidget {
  const ExtractedAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Address List',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 17.px),
              ),
              Spacer(),
              Text(
                'Add New Address',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0A84FF),
                    fontSize: 17.px),
              ).onTap(() {
                Get.to(()=> AddNewAddressScreen());
              }),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 13.sp,
                    backgroundColor: chatColor,
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Default Address',
                          style: GoogleFonts.poppins(
                              fontSize: 15.px, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'N/A',
                          style: GoogleFonts.poppins(
                              fontSize: 15.px, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'VADODARA - 390022,\nGUJARAT',
                          style: GoogleFonts.poppins(
                            fontSize: 15.px,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1, child: Image.asset('assets/images/adress1.png')),
                Expanded(
                    flex: 1, child: Image.asset('assets/images/adress2.png'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
