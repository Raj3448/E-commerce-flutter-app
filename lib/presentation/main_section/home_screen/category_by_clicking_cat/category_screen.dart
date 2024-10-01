

import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../top_products/top_product_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names=['Men','girls-\nKids','Unisex\nKids','Boys-\nKids','Women'];
    List<String> names2=['Shirts','T-Shirts','Jeans','Trousers','Track Pants &\nShorts','TrackSuits','Sweatshirts/\nHoodies',
    'Jackets','Sweaters','Thermals'
    ];
    return Scaffold(
        appBar: AppBar(
        backgroundColor: buttonColor,
        leading: IconButton(onPressed: () {
                    Get.back();
        }, icon:const Icon(Icons.arrow_back_ios,size: 17,)),
        title:             Text('Clothes Category',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(()=>NotificationScreen());
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
               SizedBox(
                            // height: Adaptive.h(20),
                            child: GridView.builder(
                              shrinkWrap: true,
                              // scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    3, // Adjust the cross axis count to show 4 items in each row
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 6,
                                childAspectRatio:1 
                              ),
                              itemBuilder:(context, index) {
                                return Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(()=>const TopProductScreen());
                                      },
                                      child: Container(
                                        height: Adaptive.h(13),
                                        width: Adaptive.w(30),
                                        // padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color:index%2==0? const Color(0xffE3DEEC):Color(0xffE2E5D7),
                                          borderRadius: BorderRadius.circular(12.sp)
                                        ),
                                        child: Image.asset('assets/images/category${index+1}.png',height: Adaptive.h(6),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Row(
                                        children: [
                                          Text(names[index],style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16.px),)
                                        ,Spacer(), const Icon(Icons.keyboard_arrow_down)
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              },
                            )),
                            sizedBoxHeight30,
         Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.amber
            )
          ),
                            // height: Adaptive.h(20),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Western Wear',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 15.px),),
                               sizedBoxHeight10,
                                SizedBox(
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    // scrollDirection: Axis.horizontal,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: 10,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          4, // Adjust the cross axis count to show 4 items in each row
                                      mainAxisSpacing: 1,
                                      crossAxisSpacing: 1,
                                      childAspectRatio:0.55 
                                    ),
                                    itemBuilder:(context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Get.to(()=> TopProductScreen());
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset('assets/images/catmen$index.png'),
                                                  Text(names2[index],textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.px),)
                                                                      
                                          ],
                                        ),
                                      );
                                        
                                    },),
                                ),
                              ],
                            )
         )
                            
            ],
          ),
        ),
      ),
    );
  }
}