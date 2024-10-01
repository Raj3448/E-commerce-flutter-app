import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/components/extracted_pin_code_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/components/extracted_shop_details.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/components/extracted_verification_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/controller/create_accopunt_controller.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccountScreen2 extends StatefulWidget {
  CreateAccountScreen2({super.key,this.ishome=false});

 final bool ishome;

  @override
  State<CreateAccountScreen2> createState() => _CreateAccountScreen2State();
}

class _CreateAccountScreen2State extends State<CreateAccountScreen2> {

@override
  void initState() {
    
        super.initState();
      //  initFunction();
  }
 

  @override
  Widget build(BuildContext context) {
 
    final controller=Get.put(CreateAccountController());
   
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Adaptive.h(100),
            color: chatColor,
            child: Column(
              children: [
                sizedBoxHeight40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: whiteColor,
                      ),
                      onPressed: () {},
                    ),
                    sizedBoxWidth30,
                    Text(
                      'Create Account',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.px,
                          color: whiteColor),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: Adaptive.h(14),
            child: Container(
              height: Adaptive.h(86),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Adaptive.sp(20)),
                    topRight: Radius.circular(Adaptive.sp(20))),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  sizedBoxHeight10,
                  Obx(
                   () {
                      return Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    'Shop Detail',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.px),
                                  ),
                                  sizedBoxHeight10,
                                  Divider(
                                    color:controller.selectedScreen.value=='details'? black:grey,
                                    thickness: 2,
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    'Pincode',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.px),
                                  ),
                                  sizedBoxHeight10,
                                  Divider(
                                    thickness: 2,
                                    color: controller.selectedScreen.value=='pincode'? black:grey,
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    'Verification',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.px),
                                  ),
                                  sizedBoxHeight10,
                                  Divider(
                                    thickness: 2,
                                    color: controller.selectedScreen.value=='verification'? black:grey,
                                  )
                                ],
                              ))
                        ],
                      );
                    }
                  ),
                  // sizedBoxHeight10,
                  SizedBox(
                    height: Adaptive.h(78),
                    child: PageView(
 physics: const NeverScrollableScrollPhysics(),
                      controller:controller.pageviewController,
                      // pageSnapping: ,
                     
                      children: const [
                        ExtractedPageView(),
                        ExtractedPinCodeScreen(),
                        ExtractedVerifiedScreen()
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
   initFunction(){
        final controller=Get.put(CreateAccountController());

     
       if (widget.ishome) {
            controller.pageviewController.nextPage(duration: Duration(milliseconds: 200),curve: Curves.linear);

        }
    }
}
