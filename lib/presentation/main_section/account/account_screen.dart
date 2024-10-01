import 'package:ecommerce_seller/presentation/main_section/account/coupons/coupon_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/edit_profile_screen/edit_profile_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/more_option_screen/more_option_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/return_screen/return_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/wallet_screen/wallet_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/wish_list_screen/wish_list_screen.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/controller/bottom_navigation_controller.dart';
import '../notification/notification_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottom = Get.put(BottomNavigationController());

    List<String> names = [
      'Wallet',
      'Orders',
      'Favourites',
      'Notification',
      'Language',
      'Return',
      'More'
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Adaptive.h(42),
            color: whiteColor,
            child: Stack(
              children: [
                Container(
                  height: Adaptive.h(38),
                  padding: EdgeInsets.all(10),
                  color: buttonColor,
                  child: Column(
                    children: [
                      sizedBoxHeight30,
                      Row(
                        children: [
                          Text(
                            'Accounts',
                            style: GoogleFonts.poppins(
                                fontSize: 18.px, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                Get.to(() => NotificationScreen());
                              },
                              child: Image.asset('assets/images/appbar1.png')),
                          sizedBoxWidth30,
                          Image.asset('assets/images/appbar2.png'),
                          sizedBoxWidth30,
                          Image.asset('assets/images/carbon_delivery.png'),
                          sizedBoxWidth40,
                        ],
                      ),
                      sizedBoxHeight20,
                      SizedBox(
                        // height: Adaptive.h(20),
                        child: GridView.builder(
                          shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 7,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                4, // Adjust the cross axis count to show 4 items in each row
                            mainAxisSpacing: 3,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (index==0) {
                                  
                                Get.to(()=>const WalletScreen());
                                }else if(index==1){
bottom.selectedIndex.value=2;
                      bottom.bottomNavigationIndexSelecting(2, 'more');

print(bottom.selectedIndex);
                                }else if(index==2){
                                  Get.to(()=>const WishListScreen());
                                  
                                 }else if(index==3){
                                        Get.to(()=>const NotificationScreen());

                                 }else if(index==5){
                                                                    Get.to(()=>const ReturnScreen()); 

                                 } else {
                                  Get.to(()=>const MoreOptionScreen());
                                }
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Container(
                                        height: Adaptive.h(8),
                                        width: Adaptive.w(15),
                                        decoration: BoxDecoration(
                                            color: Color(0xffFEE3AC),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        // padding: EdgeInsets.all(10),
                                        child: SizedBox(
                                          height: Adaptive.h(2),
                                          width: Adaptive.w(4),
                                          child: Image.asset(
                                            'assets/images/accounts${index + 1}.png',
                                        // fit: BoxFit.fill,
                                            // height: Adaptive.h(4),
                                          ),
                                        )),
                                  ),
                                  Text(
                                    names[index],
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.px,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: Adaptive.h(2),
                    left: Adaptive.w(45),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(Adaptive.w(5)),
                      child: CircleAvatar(
                          radius: Adaptive.w(4),
                          backgroundColor: whiteColor,
                          child: Center(
                              child: Icon(
                            Icons.keyboard_arrow_up,
                            color: black,
                          ))),
                    ))
              ],
            ),
          ),
          // Divider()
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(13)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'My Account',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 13.px),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                        Get.to(()=> EditProfileScreen());
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: buttonColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Edit',
                              style: GoogleFonts.poppins(color: buttonColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/Ellipse 59.png'),
                    title: Text('Shop Name',
                        style: GoogleFonts.poppins(
                            fontSize: 14.px, fontWeight: FontWeight.w500)),
                    subtitle: Text('1234567890 | Rakesh',
                        style: GoogleFonts.poppins(
                            fontSize: 12.px, fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: grey.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Remaining wallet amount: ₹10,000/ ₹15000',
                            style: GoogleFonts.poppins(
                                fontSize: 12.px, fontWeight: FontWeight.w500)),
                        // Spacer(),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          sizedBoxHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Coupons',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14.px),
                      )),
                  sizedBoxHeight10,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Adaptive.w(2)),
                    height: Adaptive.h(8),
                    width: Adaptive.w(100),
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(Adaptive.sp(12))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Coupons available worth ₹15000',
                                style: GoogleFonts.poppins(
                                    fontSize: 14.px,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Redeem Now',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14.px,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: Adaptive.w(4),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Image.asset('assets/images/coupon.png')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ).onTap(() {
              Get.to(()=>const CouponScreen());
            }),
          )
        ],
      ),
    );
  }
}
