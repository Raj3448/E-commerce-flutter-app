
import 'package:ecommerce_seller/presentation/main_section/account/edit_profile_screen/add_new_adreess.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ManageAddresScreen extends StatelessWidget {
  const ManageAddresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'Manage Address',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
      ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal:12.0),
  child:   Column(
  
    children: [
  
      sizedBoxHeight30,
  
       Align(
  
                      alignment: Alignment.centerLeft,
  
                      child: Text(
  
                        'Saved Address',
  
                        style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w600),
  
                      )),
  
                          sizedBoxHeight30,
  
  
  
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
  
                      backgroundColor: black,
  
                    child: Center(
  
                      child: CircleAvatar(
  
                                            radius: 8.sp,
  
                    backgroundColor: whiteColor,
  
                      ),
  
                    ),
  
                    ),
  
                  ),
  
                  Expanded(
  
                      flex: 3,
  
                      child: Column(
  
                        crossAxisAlignment: CrossAxisAlignment.start,
  
                        children: [
  
                          Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                
                                  'Default Address',
                                
                                  style: GoogleFonts.poppins(
                                
                                      fontSize: 15.px, fontWeight: FontWeight.w600),
                                
                                ),
                              ),
                              Expanded(
  
                      flex: 1, child: Image.asset('assets/images/delete_adress.png')),
  
                  Expanded(
  
                      flex: 1, child: Image.asset('assets/images/edit_adress.png'))
                            ],
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
  
                  
  
                ],
  
              ),
  
            )
  
    ],
  
  ),
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
floatingActionButton: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ButtonWidget(backgroundColor: buttonColor, title: 'Add new address', textColor: black,heights: Adaptive.h(6),).onTap(() {
    Get.to(()=>const AddNewAddressScreen());
  }),
),
    );
  }
}