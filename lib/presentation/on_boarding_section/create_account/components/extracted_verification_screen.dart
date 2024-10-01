import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/bottom_navigation_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/components/verification_first_widget.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExtractedVerifiedScreen extends StatelessWidget {
  const ExtractedVerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final List<String> documents = ['Aadhar', 'PAN Card', 'Driving License'];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: Adaptive.h(78),
          child: Column(
            children: [
              sizedBoxHeight15,
              Stack(
                children: [
                  VerificationFirstWidget(),
                  Positioned(
                      right: Adaptive.w(2),
                      top: Adaptive.h(3),
                      child: Image.asset('assets/images/createtab3.png'))
                ],
              ),
              sizedBoxHeight10,
              const Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 3,
                    child: Divider(
                      color: black,
                      thickness: 2,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'OR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: buttonColor),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Divider(
                      color: black,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              sizedBoxHeight10,
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Upload Document',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 19.px),
                  )),
              Text(
                'Please provide one document it will take 48\nhours for the verification',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, fontSize: 15.px),
              ),
              sizedBoxHeight10,
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: black)
               , borderRadius: BorderRadius.circular(10)
              ),
               child: ExpansionTile(
                shape: RoundedRectangleBorder(
                side: BorderSide(color: black),  
                  borderRadius: BorderRadius.circular(10)
                
                ),
                
                   title: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                'Choose Document',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                       ),
                       // Add space below the text
                      
                     ],
                   ),
                   children: documents.map((document) {
                     return Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                Text("* $document",style: TextStyle(fontSize: 13.px),),
                Divider()
                       ],
                     );
                   }).toList(),
                 ),
             )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: Adaptive.h(6),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: buttonColor,
                    
                  )
                  ,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Skip for now',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: buttonColor),),
                ),
              ),
            ),
            sizedBoxWidth10,
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                   Get.to(()=>BottomNavigation());
                },
                child: Container(
                  height: Adaptive.h(6),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text('Submit',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: whiteColor),),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
