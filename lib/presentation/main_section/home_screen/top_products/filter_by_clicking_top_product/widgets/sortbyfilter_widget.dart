import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SortByPriceWidget extends StatelessWidget {
  const SortByPriceWidget(
      {super.key, required this.priceTiltle1, required this.priceTiltle2});
  final String priceTiltle1;

  final String priceTiltle2;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Adaptive.h(3),
                width: Adaptive.w(5),
                child: Checkbox(
                  value: false,
                  onChanged: (value) {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.sp)),
                ),
              ),
              sizedBoxWidth15,
              Text(
                priceTiltle1,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.px,
                    color: Colors.black45),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Adaptive.h(3),
                width: Adaptive.w(5),
                child: Checkbox(
                  value: false,
                  onChanged: (value) {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.sp)),
                ),
              ),
              sizedBoxWidth15,
              Text(
                priceTiltle2,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.px,
                    color: Colors.black45),
              ),
            ],
          ),
        )
      ],
    );
  }
}
