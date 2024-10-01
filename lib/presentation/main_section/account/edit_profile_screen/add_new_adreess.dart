

import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(
                    color: Colors.pinkAccent.shade100.withOpacity(0.1),
                    border: Border.all(color: Colors.black12)),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/images/newadress.png')
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shop Name:Sam',
                            style: GoogleFonts.poppins(
                                fontSize: 15.px, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Owner Name:Ramees',
                            style: GoogleFonts.poppins(
                                fontSize: 12.px, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Registered Mobilenumber: +91 7012356002',
                            style: GoogleFonts.poppins(
                              fontSize: 12.px,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )),
               
                ],
              ),
            ),
            sizedBoxHeight20,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Delivary Address',
                      style: GoogleFonts.poppins(fontSize: 17.px,fontWeight: FontWeight.w600),
                    )),
                    sizedBoxHeight20,
                  //      Align(
                 
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pin code',
                      style: GoogleFonts.poppins(fontSize: 14.px,color: Colors.blue),
                    )).pSymmetric(h: 4.w),
                       TextFormField(
                        //  validator: _checkoutAddressController.validatestreet2,
                        //  controller: _checkoutAddressController.street2,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                  //  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: '110022',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),).pSymmetric(h: 3.w),
                     3.h.heightBox,
                  //      Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     'City',
                  //     style: GoogleFonts.poppins(fontSize: 10),
                  //   )).pSymmetric(h: 4.w),
                  //      TextFormField(
                  //       //  validator: _checkoutAddressController.validatecity,
                  //       //  controller: _checkoutAddressController.city,
                  // decoration: const InputDecoration(
                  //   hintText: 'Delhi',
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black, width: 0.5),
                  //   ),
                  // ),
                  //      ).pSymmetric(h: 4.w),
                       3.h.heightBox,
                       Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'State',
                          style: GoogleFonts.poppins(fontSize: 14.px),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'City',
                          style: GoogleFonts.poppins(fontSize: 14.px),
                        )).pSymmetric(h: 34.w),
                  ],
                       ).pSymmetric(h: 4.w),
                       Row(
                  children: [
                    Container(
                      width: 50.w,
                      child: TextFormField(
                       //  validator: _checkoutAddressController.validatestate,
                       //  controller: _checkoutAddressController.state,
                        decoration: const InputDecoration(
                          hintText: 'Delhi',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                     Container(
                      width: 50.w,
                      child: TextFormField(
                       //  validator: _checkoutAddressController.validatestate,
                       //  controller: _checkoutAddressController.state,
                        decoration: const InputDecoration(
                          hintText: 'Banglore',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                  //     TextFormField(
                  //       //  validator: _checkoutAddressController.validatecity,
                  //       //  controller: _checkoutAddressController.city,
                  // decoration:  InputDecoration(
                  //   hintText: 'ShopNo/Floor/Building',
                  //   hintStyle: GoogleFonts.poppins(fontSize: 14.px,color: grey,fontWeight: FontWeight.w500),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black, width: 0.5),
                  //   ),
                  // ),
                  //      ),
                      
          ],
        ),
                    sizedBoxHeight30,
       TextFormField(
        
                //  keyboardType: TextInputType.number,
                //  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                 //  keyboardType: TextInputType.phone,
                 decoration:  InputDecoration(
                     hintText: 'ShopNo/Floor/Building',
                   hintStyle: GoogleFonts.poppins(fontSize: 14.px,color: grey,fontWeight: FontWeight.w500),
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black, width: 0.5),
                   ),
                 ),).pSymmetric(h: 3.w),
                    sizedBoxHeight30,
       TextFormField(
        
                //  keyboardType: TextInputType.number,
                //  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                 //  keyboardType: TextInputType.phone,
                 decoration:  InputDecoration(
                     hintText: 'Street /Locality',
                   hintStyle: GoogleFonts.poppins(fontSize: 14.px,color: grey,fontWeight: FontWeight.w500),
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black, width: 0.5),
                   ),
                 ),).pSymmetric(h: 3.w),
                    sizedBoxHeight30,
       TextFormField(
        
                //  keyboardType: TextInputType.number,
                //  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                 //  keyboardType: TextInputType.phone,
                 decoration:  InputDecoration(
                     hintText: 'Landmark',
                   hintStyle: GoogleFonts.poppins(fontSize: 14.px,color: grey,fontWeight: FontWeight.w500),
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black, width: 0.5),
                   ),
                 ),).pSymmetric(h: 3.w),
                 sizedBoxHeight30,
                 TextFormField(
        
                //  keyboardType: TextInputType.number,
                //  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                 //  keyboardType: TextInputType.phone,
                 decoration:  InputDecoration(
                     hintText: 'Alternative Number',
                   hintStyle: GoogleFonts.poppins(fontSize: 14.px,color: grey,fontWeight: FontWeight.w500),
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black),
                   ),
                   focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.black, width: 0.5),
                   ),
                 ),).pSymmetric(h: 3.w),
      
                 sizedBoxHeight30,
                 Stack(
                   children: [
                     Image.asset('assets/images/maps.jpg',width: Adaptive.w(100),fit: BoxFit.fill,height: Adaptive.h(18),),
                    Positioned(
                      left: Adaptive.w(33),
                      bottom: Adaptive.h(1),
                      child: Container(
                        width: Adaptive.w(35),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Vx.blue500,
                        borderRadius:BorderRadius.circular(12) 
                        ),
                      child:const Center(child: Text('Seton Map',style: TextStyle(color: whiteColor),),) ,
                      ),
                    )
                   ],
                 ),
                 sizedBoxHeight20,
                 ButtonWidget(backgroundColor: buttonColor, title: 'Save Address', textColor: black,heights: Adaptive.h(6)).onTap(() {
                  Get.back();
                 }),
                 sizedBoxHeight30,
          ]),
      )
    );
  }
}