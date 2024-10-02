import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/create_account_screen2.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/model/create_new_acnt_resp_model.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/store/create_new_account_store.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/components/loading_widget.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OtpScreen2 extends StatefulWidget {
  OtpScreen2({
    required this.createNewAcntRespModel,
    super.key,
  });

  final CreateNewAcntRespModel createNewAcntRespModel;

  @override
  State<OtpScreen2> createState() => _OtpScreen2State();
}

class _OtpScreen2State extends State<OtpScreen2> {
  final store = GetIt.I<CreateNewAccountStore>();
  @override
  void initState() {
    reaction((_) => store.otpFailure, (otpFailure) {
      if (otpFailure != null && mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            const SnackBar(content: Text('Something went wrong')),
          );
      }
      store.otpFailure = null;
    });
    reaction((_) => store.otpSuccess, (otpSuccess) {
      if (otpSuccess) {
        Get.offAll(() => CreateAccountScreen2());
      }
      store.otpSuccess = false;
    });
    super.initState();
  }

  @override
  void dispose() {
    store.otpSuccess = false;
    store.otpFailure = null;
    super.dispose();
  }

  final focusNode = FocusNode();

  final otpController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 46,
    height: 46,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: grey),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Stack(
        children: [
          Scaffold(
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Adaptive.h(5),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Back',
                            style: GoogleFonts.poppins(
                                fontSize: 14.px, color: buttonColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "OTP Verification",
                            style: GoogleFonts.roboto(
                                fontSize: 30.px, fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: 3.h,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'A 4 digit OTP code has been sent to ',
                          style: GoogleFonts.roboto(
                              fontSize: 14.px,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text:
                              '+91 ${widget.createNewAcntRespModel.mobileNumber} \n',
                          style: GoogleFonts.roboto(
                              fontSize: 14.px,
                              fontWeight: FontWeight.w400,
                              color: buttonColor),
                        ),
                        TextSpan(
                          text: 'enter the code to continue. ',
                          style: GoogleFonts.roboto(
                              fontSize: 14.px,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )
                      ])),
                      SizedBox(
                        height: Adaptive.h(5),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Verification Code',
                            style: GoogleFonts.poppins(
                                fontSize: 14.px, fontWeight: FontWeight.w400),
                          )),
                      sizedBoxHeight20,
                      pinPutFunction(),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      Row(
                        children: [
                          Text(
                            'Trying to auto-fill OTP 00:10',
                            style: GoogleFonts.poppins(
                                fontSize: 13.px,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff9E9E9E)),
                          ),
                          const Spacer(),
                          Text(
                            'Re-Send Code',
                            style: GoogleFonts.poppins(
                                fontSize: 14.px,
                                fontWeight: FontWeight.w400,
                                color: buttonColor,
                                decoration: TextDecoration.underline,
                                decorationColor: buttonColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Adaptive.h(6),
                      ),
                      InkWell(
                          onTap: () {
                            if (otpController.text.isEmpty) {
                              Get.snackbar('Error', 'Please enter the OTP.',
                                  backgroundColor: Colors.redAccent,
                                  colorText: Colors.white);
                              return;
                            }
                            if (otpController.text !=
                                widget.createNewAcntRespModel.otp) {
                              Get.snackbar(
                                  'Error', 'The OTP entered is incorrect.',
                                  backgroundColor: Colors.redAccent,
                                  colorText: Colors.white);
                              return;
                            }
                            store.otpVerification(
                                otp: widget.createNewAcntRespModel.otp,
                                id: widget.createNewAcntRespModel.id);
                          },
                          child: ButtonWidget(
                            backgroundColor: buttonColor,
                            title: 'Continue',
                            textColor: Colors.white,
                            heights: Adaptive.h(6),
                          )),
                      SizedBox(
                        height: Adaptive.h(3),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (store.isLoading == true)
            Material(color: Colors.transparent, child: const LoadingWidget()),
        ],
      );
    });
  }

  Directionality pinPutFunction() {
    return Directionality(
      // Specify direction if desired
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,
        controller: otpController, // Using controller for OTP
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
          border: Border.all(color: Colors.grey),
        )),
        separatorBuilder: (index) => SizedBox(width: 13.w),
        validator: (value) {
          return value == widget.createNewAcntRespModel.otp
              ? null
              : 'Pin is incorrect';
        },
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: Adaptive.w(20),
              height: 1,
              color: focusedBorderColor,
            ),
          ],
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: fillColor,
            borderRadius: BorderRadius.circular(19),
            border: Border.all(color: focusedBorderColor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: Colors.redAccent),
        ),
      ),
    );
  }
}
