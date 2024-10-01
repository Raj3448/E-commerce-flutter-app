import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/filter_by_clicking_top_product/filter_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/product_screen/product_details_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TopProductScreen extends StatelessWidget {
  const TopProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:  Icon(Icons.arrow_back_ios,size: 16.px,)),
        title: Text(
          'Top Products',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(() => NotificationScreen());
              },
              child: Image.asset('assets/images/appbar1.png')),
          sizedBoxWidth20,
          Image.asset('assets/images/appbar2.png'),
          sizedBoxWidth20,
          Image.asset('assets/images/appbar3.png'),
          sizedBoxWidth20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>const FilterScreen());
                    },
                    child: Image.asset('assets/images/topproduct.png')),
                  sizedBoxWidth10,
                  Text(
                    'Filters',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 15.px),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Color(0xffE2E5D7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sort By',
                          style: GoogleFonts.poppins(
                              fontSize: 13.px, fontWeight: FontWeight.w500),
                        ),
                        const Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                  )
                ],
              ),
              sizedBoxHeight10,
              Container(
                  // height: 50.h,
                  width: 100.w,
                  // height: 50.h,
                  //   color: green,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 5, // Spacing between columns
                        mainAxisSpacing: 9.0, // Spacing between rows
                        childAspectRatio: 0.75),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                         Get.to(()=>ProductDetailsScreen());
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalDetails(),));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 230, 227, 227),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Column(
                              children: [
                                SizedBox(
                                  // height: 11.h,
                                  width: 100.w,
                                  // color: green,
                                  child: Image.asset(
                                    'assets/images/topproduct2.png',
                                    fit: BoxFit.cover,
                                    width: 100.w,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Men Printed Shirt',
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 13.px,
                                            fontWeight: FontWeight.w600),
                                      )
        
                                      // Icon(Icons.share,size: 12.sp,color: green,)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Neque porro quisquam est qui dolorem ipsum quia',
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 10.px,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '₹5500',
                                        style: TextStyle(
                                            color: black,
                                            fontSize: 13.px,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      Text(
                                        'MOQ: 4 Pcs',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.px),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '6500',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black26,
                                            fontSize: 13.px,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      sizedBoxWidth10,
                                      Text(
                                        '40%Off',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.px,
                                            color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    VxRating(
                                      count: 5,
                                      selectionColor: buttonColor,
                                      onRatingUpdate: (value) {},
                                    ),
                                    Text(
                                      '56890',
                                      style: TextStyle(
                                          color: grey, fontSize: 12.px),
                                    )
                                  ],
                                ),
                                // sizedBoxHeight20,
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
