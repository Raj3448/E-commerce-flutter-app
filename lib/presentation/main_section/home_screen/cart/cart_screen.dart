import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/payment/payment_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/cart/store/cart_store.dart';
import 'package:ecommerce_seller/presentation/main_section/notification/notification_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/search_screen/search_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/bottomsheet_function.dart';
import 'package:ecommerce_seller/utilz/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utilz/colors.dart';
import '../../../../utilz/sized_box.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final store = GetIt.I<CartStore>();
  @override
  void initState() {
    super.initState();
    store.fetchAllCart();
    reaction((_) => store.updateCartfailure, (updateCartfailure) {
      if (updateCartfailure != null && mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(content: Text(updateCartfailure)),
          );
      }
      store.addCartfailure = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Stack(
        children: [
          Scaffold(
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
                            // Image.asset('assets/images/home_screen_logo.png',color: grey,),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 17.sp,
                                )),
                            Text(
                              'My Cart',
                              style: GoogleFonts.poppins(
                                  fontSize: 18.px, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  Get.to(() => const NotificationScreen());
                                },
                                child:
                                    Image.asset('assets/images/appbar1.png')),
                            sizedBoxWidth30,
                            GestureDetector(
                                onTap: () {
                                  showCustomBottomSheet(context);
                                },
                                child:
                                    Image.asset('assets/images/appbar2.png')),
                            sizedBoxWidth30,
                            // Image.asset('assets/images/carbon_delivery.png'),
                            // sizedBoxWidth40,
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const SearchScreen());
                          },
                          child: Container(
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
                        ),
                        sizedBoxHeight20,
                      ],
                    ),
                  ),
                  sizedBoxHeight20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: 'Deliver to :',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12.px,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff838383))),
                                      TextSpan(
                                          text: 'Jay Kumar... 411045',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13.px,
                                              fontWeight: FontWeight.w500,
                                              color: black)),
                                    ])),
                                    sizedBoxWidth10,
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Color(0xffF2F2F2)),
                                      child: Text('Home',
                                          style: GoogleFonts.poppins(
                                              fontSize: 11.px,
                                              fontWeight: FontWeight.w400,
                                              color: black)),
                                    )
                                  ],
                                ),
                                Text('Q.No. Room number 201, Epic, Vishal...',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.px,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff838383)))
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: Adaptive.h(6),
                              // width: Adaptive.w(45),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.sp),
                                border: Border.all(
                                  color: buttonColor,
                                ),
                                color: whiteColor,
                              ),
                              child: Center(
                                child: Text(
                                  'Change',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.px,
                                      color: buttonColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                        Observer(builder: (context) {
                          if (store.isLoading) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Center(
                                  child: LoadingWidget(
                                showShadow: false,
                              )),
                            );
                          }

                          if (store.addCartfailure != null) {
                            return Center(child: Text(store.addCartfailure!));
                          }

                          if (store.allCartModel == null ||
                              (store.allCartModel?.data.products.isEmpty ??
                                  true)) {
                            return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
                                child:
                                    Center(child: Text('No cart data found.')));
                          }
                          final cartDetails = store.allCartModel!;
                          return SizedBox(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) =>
                                  sizedBoxHeight20,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: grey.withOpacity(0.2))),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  'assets/images/cart1.png'),
                                              sizedBoxHeight10,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Image.asset(
                                                          'assets/images/cartdic.png')
                                                      .onTap(() {
                                                    store.updateCart(
                                                        productId: cartDetails
                                                            .data
                                                            .products[index]
                                                            .product
                                                            .id,
                                                        size: 'L',
                                                        prodIndex: index,
                                                        quantity: cartDetails
                                                                .data
                                                                .products[index]
                                                                .quantity -
                                                            1);
                                                  }),
                                                  sizedBoxWidth20,
                                                  Text(
                                                    cartDetails
                                                        .data
                                                        .products[index]
                                                        .quantity
                                                        .toString(),
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14.px),
                                                  ),
                                                  sizedBoxWidth20,
                                                  Image.asset(
                                                          'assets/images/cartincr.png')
                                                      .onTap(() {
                                                    store.updateCart(
                                                        productId: cartDetails
                                                            .data
                                                            .products[index]
                                                            .product
                                                            .id,
                                                        size: 'L',
                                                        prodIndex: index,
                                                        quantity: cartDetails
                                                                .data
                                                                .products[index]
                                                                .quantity +
                                                            1);
                                                  }),
                                                ],
                                              )
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cartDetails.data.products[index]
                                                    .product.productName,
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.px),
                                              ),
                                              sizedBoxHeight10,
                                              Row(
                                                // mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  VxRating(
                                                    size: Adaptive.h(2),
                                                    count: 5,
                                                    isSelectable: false,
                                                    selectionColor: buttonColor,
                                                    onRatingUpdate: (value) {},
                                                  ),
                                                  Text(
                                                    '56890',
                                                    style: TextStyle(
                                                        color: grey,
                                                        fontSize: 12.px),
                                                  ),
                                                  // Spacer(),
                                                  sizedBoxWidth20,
                                                  Text(
                                                    'MOQ:4 Pcs',
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12.px),
                                                  )
                                                ],
                                              ),
                                              sizedBoxHeight10,
                                              Row(
                                                // crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '₹ ${cartDetails.data.products[index].price + 409}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors.black26,
                                                        fontSize: 15.px,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  sizedBoxWidth10,
                                                  Text(
                                                    '₹ ${cartDetails.data.products[index].price}',
                                                    style: TextStyle(
                                                        color: black,
                                                        fontSize: 15.px,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  sizedBoxWidth60,
                                                  // Spacer(),
                                                  Text(
                                                    '74% off',
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15.px,
                                                        color: Colors.green),
                                                  ),
                                                  // Spacer(),
                                                  // Text(
                                                  //   'MOQ: 4 Pcs',
                                                  //   style: GoogleFonts.poppins(
                                                  //       fontWeight: FontWeight.w400, fontSize: 13.px),
                                                  // )
                                                ],
                                              ),
                                              sizedBoxHeight10,
                                              Text(
                                                '2 offers applied 2 offers available ',
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.px,
                                                    color: Colors.green),
                                              ),
                                              sizedBoxHeight10,
                                              RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text: 'Free Delivery',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12.px,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.green)),
                                                TextSpan(
                                                    text: 'by Thu Mar 28 | ',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13.px,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: grey)),
                                                TextSpan(
                                                    text: ' ₹ 40',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13.px,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: grey)),
                                              ])),
                                            ],
                                          )
                                        ],
                                      ),
                                      sizedBoxHeight20,
                                      Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/cartremove.png'),
                                                sizedBoxWidth10,
                                                Text(
                                                  'Remove',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.px,
                                                      color: grey,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ).onTap(() {
                                              store.deleteCart(
                                                  productId: store
                                                      .allCartModel!
                                                      .data
                                                      .products[index]
                                                      .product
                                                      .id);
                                            }),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/cartsave.png'),
                                                sizedBoxWidth10,
                                                Text(
                                                  'Save for later',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.px,
                                                      color: grey,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                    'assets/images/cartbuy.png'),
                                                sizedBoxWidth10,
                                                Text(
                                                  'Buy this now',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.px,
                                                      color: grey,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                              itemCount: cartDetails.data.products.length,
                            ),
                          );
                        }),
                        sizedBoxHeight30
                      ],
                    ),
                  )
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: store.allCartModel == null
                ? null
                : Container(
                    height: Adaptive.h(8),
                    width: Adaptive.w(100),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Adaptive.sp(22)),
                            topLeft: Radius.circular(Adaptive.sp(22))),
                        border: Border.all(color: black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '₹${store.allCartModel!.data.totalPaidAmount + 2000}',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black26,
                              fontSize: 12.px,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '₹${store.allCartModel!.data.totalPaidAmount}',
                          style: TextStyle(
                              // decoration: TextDecoration.lineThrough,
                              color: Colors.black,
                              fontSize: 18.px,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: Adaptive.h(5.5),
                          width: Adaptive.w(45),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.sp),
                            border: Border.all(
                              color: buttonColor,
                            ),
                            color: buttonColor,
                          ),
                          child: Center(
                            child: Text(
                              'Place Order',
                              style: GoogleFonts.poppins(
                                  fontSize: 15.px,
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ).onTap(() {
                          Get.to(() => const PaymentScreen());
                        })
                      ],
                    ),
                  ),
          ),
          if (store.isUpdateLoading)
            Material(
              color: Colors.transparent,
              child: LoadingWidget(),
            )
        ],
      );
    });
  }
}
