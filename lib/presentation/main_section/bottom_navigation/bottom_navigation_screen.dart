import 'dart:developer';


import 'package:ecommerce_seller/presentation/main_section/account/account_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/controller/bottom_navigation_controller.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/home_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/orders/orders_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/wish_list_screen/wish_list_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/otp/otp_screen2.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

final bottom = Get.put(BottomNavigationController());

class _BottomNavigationState extends State<BottomNavigation> {
  // int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
   
    HomeScreen(),
        WishListScreen(),
            OrderScreen(), 
               AccountScreen(),
            
            
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        log(bottom.selectedIndex.value.toString());
        return _widgetOptions.elementAt(bottom.selectedIndex.value);
      }),
      bottomNavigationBar: ClipRRect(
         borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.sp),
                topRight: Radius.circular(0.sp)),
        child: Container(
            constraints: BoxConstraints(maxHeight: Adaptive.h(10), maxWidth: 98.w),
            
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              border:Border(
        top: BorderSide( // Specify the border for the top side
          color: Colors.black12, // Choose the color of the border
          width: 1.0, // Choose the width of the border
        ),
          ),
             
              // boxShadow: [
              //   BoxShadow(
              //     blurRadius: 20,
              //     color: Colors.black.withOpacity(.1),
              //   )
              // ],
            ),
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      bottom.bottomNavigationIndexSelecting(0, 'home');
                    },
                    child: bottom.selectedText.value != 'home'
                        ? Column(
                            children: [
                              Image.asset('assets/images/Home.png'),
                               Text('Home',style: GoogleFonts.roboto(fontSize: 12.px,fontWeight: FontWeight.w500),),
                            ],
                          )
                        : Column(
                            children: [
                              Image.asset(
                                'assets/images/Home.png',
                                color: chatColor,
                                
                              ),
                               Text(
                                'Home',
                                style: GoogleFonts.roboto(color: chatColor,fontSize: 12.px,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      bottom.bottomNavigationIndexSelecting(1, 'boost');
                    },
                    child: bottom.selectedText.value != 'boost'
                        ? Column(
                            children: [
                              Image.asset('assets/images/bottom2.png'),
                               Text('WishList',style:GoogleFonts.roboto(fontSize: 12.px,fontWeight: FontWeight.w500),),
                            ],
                          )
                        : Column(
                            children: [
                              Image.asset(
                                'assets/images/bottom2.png',
                                color: chatColor,
                              ),
                              Text(
                                'WishList',
                                style: GoogleFonts.roboto(color: chatColor,fontSize: 12.px,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      bottom.bottomNavigationIndexSelecting(2, 'more');
                    },
                    child: bottom.selectedText.value != 'more'
                        ? Column(
                            children: [
                              Image.asset('assets/images/bottom3.png'),
                               Text('Orders', style: GoogleFonts.roboto(fontSize: 12.px,fontWeight: FontWeight.w500)),
                            ],
                          )
                        : Column(
                            children: [
                              Image.asset(
                                'assets/images/bottom3.png',
                                color: chatColor,
                              ),
                              Text(
                                'Orders',
                                style: GoogleFonts.roboto(color: chatColor,fontSize: 12.px,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                  ),
                   GestureDetector(
                    onTap: () {
                      bottom.bottomNavigationIndexSelecting(3, 'account');
                    },
                    child: bottom.selectedText.value != 'account'
                        ? Column(
                            children: [
                              Image.asset('assets/images/bottom4.png'),
                               Text('Account', style: GoogleFonts.roboto(fontSize: 12.px,fontWeight: FontWeight.w500)),
                            ],
                          )
                        : Column(
                            children: [
                              Image.asset(
                                'assets/images/bottom4.png',
                                color: chatColor,
                              ),
                              Text(
                                'Account',
                                style: GoogleFonts.roboto(color: chatColor,fontSize: 12.px,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                  ),
                  
                ],
              );
            })
            // child: Material(
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(20.sp),
            //         topRight: Radius.circular(20.sp)),
            //     elevation: 5,
            //     child: GNav(
            //       rippleColor: Colors.grey[300]!,
            //       hoverColor: Colors.grey[100]!,
            //       // gap: 7,
            //       activeColor: Colors.black,
            //       iconSize: 12,
            //       padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 20.sp),
            //       duration: Duration(milliseconds: 400),
            //       tabBackgroundColor: Colors.grey[100]!,
            //       color: Colors.black,
            //       tabs: [
            //         GButton(
            //           icon: Icons.home_filled,
            //           text: 'Home',
            //           iconSize: 10,
            //           hoverColor: chatColor,
            //           // gap: 7,
            //           textColor:  chatColor,
            //           leading: Image.asset(
            //             'assets/images/bottomm1.png',
            //             height: 20.0,
            //             width: 20,
            //             color: Colors.black,
            //           ),
            //         ),
            //         GButton(
            //           icon: Icons.home_filled,
            //           text: 'Category',
            //           textColor: grey,
            //           // gap: 7,
            //           leading: Image.asset(
            //             'assets/images/Vector (4).png',
            //             height: 20.0,
            //             width: 20,
            //           color: Colors.black,
            //           ),
            //         ),
            //         // GButton(
            //         //   icon: Icons.home_filled,
            //         //   gap: 7,
            //         //   textColor: data.selectedIndex == 2 ? green : grey,
            //         //   text: 'Trending',
            //         //   leading: Image.asset(
            //         //     'assets/images/Vector (5).png',
            //         //     height: 20.0,
            //         //     width: 20,
            //         //     color: data.selectedIndex == 2 ? green : grey,
            //         //   ),
            //         // ),
            //         // GButton(
            //         //   icon: Icons.home_filled,
            //         //   gap: 7,
            //         //   text: 'Profile',
            //         //   textColor: data.selectedIndex == 3 ? green : grey,
            //         //   leading: Image.asset('assets/images/bottom4.png',
            //         //       height: 20.0,
            //         //       width: 20,
            //         //       color: data.selectedIndex == 3 ? green : grey),
            //         // ),
            //         // GButton(
            //         //   icon: Icons.home_filled,
            //         //   gap: 7,
            //         //   textColor: data.selectedIndex == 4 ? green : grey,
            //         //   text: 'Settings',
            //         //   leading: Image.asset(
            //         //     'assets/images/bottom5.png',
            //         //     height: 20.0,
            //         //     width: 20,
            //         //     color: data.selectedIndex == 4 ? green : grey,
            //         //   ),
            //         // ),
            //       ],
            //       // selectedIndex: data.selectedIndex,
            //       selectedIndex:0,
            //       onTabChange: (index) {
            //         // data.indexValueChangingFunction(index);
            //       },
            //     ),
            //   )
            ),
      ),
    );
  }
}
