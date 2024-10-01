import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/filter_by_clicking_top_product/controller/filter_controller.dart';
import 'package:ecommerce_seller/presentation/main_section/home_screen/top_products/filter_by_clicking_top_product/widgets/sortbyfilter_widget.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(FilterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
        automaticallyImplyLeading:false,
        title: Text(
          'Filter',
          style:
              GoogleFonts.poppins(fontSize: 18.px, fontWeight: FontWeight.w500),
        ),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'SORT BY',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16.px),
                ),
              ),
              sizedBoxHeight20,
             GestureDetector(
                    onTap: () {
                      controller.selectedPriceTypeChanging(0);
                    },
                    child: PriceTypeWidget(controller: controller,price: 'Relevance',index: 0),
                  ),
                  sizedBoxHeight20,
                   GestureDetector(
                    onTap: () {
                      controller.selectedPriceTypeChanging(1);
                    },
                    child: PriceTypeWidget(controller: controller,price: 'Popularity ',index: 1),
                  ),
                    sizedBoxHeight20,
                   GestureDetector(
                    onTap: () {
                      controller.selectedPriceTypeChanging(2);
                    },
                    child: PriceTypeWidget(controller: controller,price: 'Price-Low to High ',index: 2),
                  ),
                   sizedBoxHeight20,
                   GestureDetector(
                    onTap: () {
                      controller.selectedPriceTypeChanging(3);
                    },
                    child: PriceTypeWidget(controller: controller,price: 'Price-High to Low ',index: 3),
                  ),
                    sizedBoxHeight20,
                   GestureDetector(
                    onTap: () {
                      controller.selectedPriceTypeChanging(4);
                    },
                    child: PriceTypeWidget(controller: controller,price: 'Newest Firts',index: 4),
                  ),
                  sizedBoxHeight30,
              Divider(
                color: black,
              ),
              sizedBoxHeight20,
                 Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'PRICE',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16.px),
                ),
              ),
              sizedBoxHeight20,
              SortByPriceWidget(priceTiltle1: 'Rs 299 and below',priceTiltle2: 'Rs 299 - Rs 499',),
               sizedBoxHeight20,
              SortByPriceWidget(priceTiltle1: 'Rs 500 - Rs 999',priceTiltle2: 'Rs 1000 - Rs 1499',),
                 sizedBoxHeight20,
              SortByPriceWidget(priceTiltle1: 'Rs 1500 - Rs 1999',priceTiltle2: 'Rs 2000 and above',),
              sizedBoxHeight30,
              Divider(
                color: black,
              ),
              sizedBoxHeight20,
                 Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'BRAND',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16.px),
                ),
              ),
              sizedBoxHeight10,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black26
                  )
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/filter1.png'),
                    sizedBoxWidth20,
                    Text('Search your favourite brand ',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 15.px,color: Colors.black38),)
                  ,Spacer(),
                  Image.asset('assets/images/filter2.png')
                 ],
                ),
              ),
              sizedBoxHeight30,
                          SortByPriceWidget(priceTiltle1: 'Wildhorn',priceTiltle2: 'Alison',),
                           sizedBoxHeight30,
                          SortByPriceWidget(priceTiltle1: 'Adamson',priceTiltle2: 'Blowzy',),
                           sizedBoxHeight30,
                          SortByPriceWidget(priceTiltle1: 'Lappee',priceTiltle2: 'Hileder',),
        sizedBoxHeight70
        
            ],
          ),
        ),
      ),
    );
  }
}

class PriceTypeWidget extends StatelessWidget {
  const PriceTypeWidget({
    super.key,
    required this.controller,
    required this.price,
    required this.index
  });

  final FilterController controller;
  final String price;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
       () {
        return Row(
          children: [
            Text(
              price,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.px,
                  color: Colors.black54),
            ),
            Spacer(),
           CircleAvatar(
            radius: Adaptive.w(3.5),
            backgroundColor: black,
            child: CircleAvatar(
              radius: Adaptive.w(3),
              backgroundColor: whiteColor,
              child: CircleAvatar(
        radius: Adaptive.w(2),
        backgroundColor:controller.selectedPriceType.value==index? buttonColor:whiteColor,
              ),
            ),
           )
          ],
        );
      }
    );
  }
}
