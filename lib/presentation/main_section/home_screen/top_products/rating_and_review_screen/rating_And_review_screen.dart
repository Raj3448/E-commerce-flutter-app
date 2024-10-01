

import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingReviewScreen extends StatelessWidget {
  const RatingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17.sp,
            )),
        title: Text(
          'Products Details',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:Adaptive.w(2)),
        child: Column(
          children: [
          SizedBox(
              height: Adaptive.h(17),
              width: Adaptive.w(100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sizedBoxHeight30,
                      Text('4.6/5',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.w600),),
                                            Text('86 Reviews',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400),),
                  
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                         PartiallyFilledRating(
                        iconSize: Adaptive.h(2.5),
  totalRating: 5,
  selectedRating: 5, // Example: 2.5 stars selected
  selectedColor: Colors.orange,
  unselectedColor: Colors.grey,
),
                    LinearPercentIndicator(
                width: 140.0,
                lineHeight: Adaptive.h(1),
                percent: 0.7,
                backgroundColor: Colors.grey,
                progressColor: buttonColor,
                trailing: Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),),
                barRadius: Radius.circular(12.sp),
              ),
              
                        ],
                      ),
                       Row(
                        children: [
                       PartiallyFilledRating(
                        iconSize: Adaptive.h(2.5),
  totalRating: 5,
  selectedRating: 4, // Example: 2.5 stars selected
  selectedColor: Colors.orange,
  unselectedColor: Colors.grey,
),
                    LinearPercentIndicator(
                width: 140.0,
                lineHeight: Adaptive.h(1),
                percent: 0.7,
                backgroundColor: Colors.grey,
                progressColor: buttonColor,
                trailing: Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),),
                barRadius: Radius.circular(12.sp),
              ),
              
                        ],
                      ),
                       Row(
                        children: [
                         PartiallyFilledRating(
                        iconSize: Adaptive.h(2.5),
  totalRating: 5,
  selectedRating: 3, // Example: 2.5 stars selected
  selectedColor: Colors.orange,
  unselectedColor: Colors.grey,
),
                    LinearPercentIndicator(
                width: 140.0,
                lineHeight: Adaptive.h(1),
                percent: 0.7,
                backgroundColor: Colors.grey,
                progressColor: buttonColor,
                trailing: Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),),
                barRadius: Radius.circular(12.sp),
              ),
              
                        ],
                      ),
                             Row(
                        children: [
                         PartiallyFilledRating(
                        iconSize: Adaptive.h(2.5),
  totalRating: 5,
  selectedRating: 2, // Example: 2.5 stars selected
  selectedColor: Colors.orange,
  unselectedColor: Colors.grey,
),
                    LinearPercentIndicator(
                width: 140.0,
                lineHeight: Adaptive.h(1),
                percent: 0.1,
                backgroundColor: Colors.grey,
                progressColor: buttonColor,
                trailing: Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),),
                barRadius: Radius.circular(12.sp),
              ),
              
                        ],
                      ),
                       Row(
                        children: [
                       PartiallyFilledRating(
                        iconSize: Adaptive.h(2.5),
  totalRating: 5,
  selectedRating: 1, // Example: 2.5 stars selected
  selectedColor: Colors.orange,
  unselectedColor: Colors.grey,
),

                    LinearPercentIndicator(
                width: 140.0,
                lineHeight: Adaptive.h(1),
                percent: 0.1,
                backgroundColor: Colors.grey,
                progressColor: buttonColor,
                trailing: Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),),
                barRadius: Radius.circular(12.sp),
              ),
              
                        ],
                      )
                    ],
                  )
                ],
              ),
              
              // ,color: black,
            ),
            // sizedBoxHeight20,
             SizedBox(
                      child: ListView.builder(
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                        itemCount:5,
                        itemBuilder: (context, index) {
                        return Column(
                      children: [
                        Row(
                          children: [
                            Text('Priya',
                                style: GoogleFonts.poppins(
                                  // decoration: TextDecoration.lineThrough,
                                  // decorationColor: Colors.grey,
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.px,
                                )),
                            Spacer(),
                            Text('18-03-2024|10:00 AM',
                                style: GoogleFonts.poppins(
                                  // decoration: TextDecoration.underline,
                                  // decorationColor: buttonColor,
                                  color: grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.px,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            VxRating(
                              size: Adaptive.h(2),
                              count: 5,
                              selectionColor: buttonColor,
                              onRatingUpdate: (value) {},
                            ),
                            Spacer(),
                            Text('18-03-2024|10:00 AM',
                                style: GoogleFonts.poppins(
                                  // decoration: TextDecoration.underline,
                                  // decorationColor: buttonColor,
                                  color: grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.px,
                                ))
                          ],
                        ),
                        Text(
                          "is simply dummy text of the printing and type setting is a  industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                          style: GoogleFonts.poppins(
                              fontSize: 12.px, fontWeight: FontWeight.w500),
                        ),
                        sizedBoxHeight20
                      ],
                    );
                      },),
                    )
          ],
        ),
      ),
    );
  }
}
class PartiallyFilledRating extends StatelessWidget {
  final double totalRating;
  final double selectedRating;
  final Color selectedColor;
  final Color unselectedColor;
  final double iconSize;

  const PartiallyFilledRating({
    required this.totalRating,
    required this.selectedRating,
    this.selectedColor = Colors.yellow,
    this.unselectedColor = Colors.grey,
    this.iconSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalRating.toInt(), (index) {
        if (index < selectedRating) {
          return Icon(
            Icons.star,
            size: iconSize,
            color: selectedColor,
          );
        } else if (index < selectedRating.ceil()) {
          return ClipRect(
            child: Stack(
              children: [
                Icon(
                  Icons.star,
                  size: iconSize,
                  color: unselectedColor,
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Icon(
                    Icons.star_half,
                    size: iconSize,
                    color: selectedColor,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Icon(
            Icons.star_border,
            size: iconSize,
            color: unselectedColor,
          );
        }
      }),
    );
  }
}
