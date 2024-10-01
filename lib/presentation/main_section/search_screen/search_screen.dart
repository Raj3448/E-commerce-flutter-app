

import 'package:ecommerce_seller/presentation/main_section/home_screen/category_by_clicking_cat/category_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/components/extracted_homewidgets.dart';
import 'package:ecommerce_seller/presentation/main_section/search_screen/components/search_items_widget.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utilz/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
            List<String> name=['Women Printed Kurta','Nike'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
                height: Adaptive.h(20),
                width: Adaptive.w(100),
                color: chatColor,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // sizedBoxHeight50,
                    sizedBoxHeight50,
                    Row(
                      children: [
                        sizedBoxWidth40,
                      
                         Text('Search Products',style: GoogleFonts.poppins(fontSize:18.px ,fontWeight: FontWeight.w500),),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              // Get.to(() => NotificationScreen());
                            },
                            child: Image.asset('assets/images/appbar1.png')),
                        sizedBoxWidth30,
                        Image.asset('assets/images/appbar2.png'),
                        sizedBoxWidth30,
                        Image.asset('assets/images/carbon_delivery.png'),
                        sizedBoxWidth40,
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: Adaptive.h(6),
                      width: Adaptive.w(90),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Search your products...',
                            style: GoogleFonts.poppins(
                                color: grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.px),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            color: buttonColor,
                          ),
                          sizedBoxWidth20,
                          Container(
                            height: Adaptive.h(2),
                            width: Adaptive.w(0.4),
                            color: grey,
                          ),
                          sizedBoxWidth20,
                          Image.asset('assets/images/home2.png'),
                          sizedBoxWidth15
                        ],
                      ),
                    ),
                    sizedBoxHeight20,
                  ],
                ),
              ),
              sizedBoxHeight10,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Most Popular Searches',style:  GoogleFonts.poppins(
                                    // color: grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.px),),
                ),
              ),
              sizedBoxHeight15,
              Wrap(
                direction: Axis.horizontal,
                         alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      // clipBehavior: Clip.none,
      // textDirection: ,
      runSpacing: Adaptive.h(2),
                spacing: Adaptive.w(2),
                children: [
                  SearchingItems(title: 'Technosport',),
                                  SearchingItems(title: 'Tom Hiddle',),
                                   SearchingItems(title: 'White Rose',),
                                    SearchingItems(title: 'Jockey',),
                                     SearchingItems(title: 'Pawan Garments',),
                                      SearchingItems(title: 'Dollar',),
                                       SearchingItems(title: 'Dixcy',),
                                        SearchingItems(title: 'Vandana Sarees',),
                                         SearchingItems(title: 'Shiv Naresh',),
                                          SearchingItems(title: 'Socks',)
      
                ],
              ),
              sizedBoxHeight20,
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Preferred Categories',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16.px),
                    ),
                    Spacer(),
                     
                  ],
                ),
              ),
              sizedBoxHeight15,
                GestureDetector(
                            onTap: () {
                              Get.to(()=>CategoryScreen());
                              
                            },
                            child: HomeCatWidgets()),
                            //  sizedBoxHeight10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Deal of the Day',style: GoogleFonts.poppins(fontSize: 16.px,fontWeight: FontWeight.w500),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/search2.png'),
                      sizedBoxWidth10,
                      Text('22h 55m 20s remaining',style: GoogleFonts.poppins(fontSize: 12.px,fontWeight: FontWeight.w400),)
        
                    ],
                   ),
                  
                  ],
                ),
                Spacer(),
                  CircleAvatar(
                      radius: 16.sp,
                      backgroundColor: buttonColor,
                      child: Icon(Icons.keyboard_arrow_right,color: whiteColor,))
                ],
                  ),
                ),
                 sizedBoxHeight10,
                    Padding(
                 padding: const EdgeInsets.symmetric(horizontal:8.0),
                 child: SizedBox(
                   height: Adaptive.h(30),
                   width: Adaptive.w(100),
                           child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                   physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 2,
                   separatorBuilder: (context, index) => sizedBoxWidth10,
                  itemBuilder:(context, index) {
                  return _itemsOfProducts(index, name);
                           }, ),
                 ),
               ),
          ],
        ),
      ),
    );
  }
  
  InkWell _itemsOfProducts(int index, List<String> name) {
    return InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalDetails(),));
                    },
                    child: Container(
                      width: Adaptive.w(50),
                      height: Adaptive.h(25),
                         
                                            // margin: const EdgeInsets.only(left: 0),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 230, 227, 227),
                                              ),
                                            ),
                                            child:  Padding(
                                              padding: EdgeInsets.all(
                                                  0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    // height: 11.h,
                                                    width: 100.w,
                                                   // color: green,
                                                    child: Image.asset('assets/images/wishlist${index+1}.png',fit: BoxFit.cover,width: 100.w,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5,right: 5,),
                                                    child: Row(
                                                      children: [
                                                        Text('${name[index]}',style: TextStyle(color: black,fontSize: 13.px,fontWeight: FontWeight.w600),)
                                                       
                                                        // Icon(Icons.share,size: 12.sp,color: green,)
                                                       ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Text('Neque porro quisquam est qui dolorem ipsum quia',maxLines: 2, style: 
                                                      TextStyle(color: black,fontSize: 10.px,fontWeight: FontWeight.bold),)),
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('₹5500',
                                                      style: TextStyle(color: black,fontSize: 13.px,fontWeight: FontWeight.w500),)
                                                      ,
                                                      Spacer(),
                                                     Text('MOQ: 4 Pcs',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13.px),)
                                                    
                                                    ],
                                                  ),
                                                ),
                                                  Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('6500',
                                                      style: TextStyle(
                                                        decoration: TextDecoration.lineThrough,
                                                        color: Colors.black26,fontSize: 13.px,fontWeight: FontWeight.w500),)
                                                      ,
                                                      // Spacer(),
                                                      sizedBoxWidth10,
                                                     Text('40%Off',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 13.px,color: Colors.green),)
                                                    
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    VxRating(
                                                      count: 5,
                                                      selectionColor: buttonColor,
                                                      onRatingUpdate: (value) {
                                                      
                                                    },),
                                                    Text('56890',style: TextStyle(color: grey,fontSize: 12.px
                                                    ),)
                                                  ],
                                                )
                                              
                                                  
                                                ],
                                              ),
                                            ),
                                          ),
                  );
  }
}
