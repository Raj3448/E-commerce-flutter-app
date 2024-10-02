import 'package:ecommerce_seller/presentation/on_boarding_section/create_account/store/create_new_account_store.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/otp/otp_screen2.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/components/loading_widget.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController mobileController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final store = GetIt.I<CreateNewAccountStore>();

  @override
  void initState() {
    super.initState();

    reaction((_) => store.authFailure, (authFailure) {
      if (store.authFailure != null && mounted) {
        store.authFailure?.fold(
          (l) => {
            l.maybeWhen(
              invalidEmail: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(content: Text('Invalid email address!')),
                  );
              },
              invalidPhoneNumber: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(content: Text('Invalid phone number!')),
                  );
              },
              userAlreadyExists: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text('User already exists!'),
                    ),
                  );
              },
              orElse: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(content: Text('Error: Unknown error!')),
                  );
              },
            ),
          },
          (r) => null,
        );
      }
      store.authFailure = null;
    });
    reaction((_) => store.createNewAcntRespModel, (createNewAcntRespModel) {
      if (createNewAcntRespModel != null) {
        Get.to(() => OtpScreen2(createNewAcntRespModel: createNewAcntRespModel,));
      }
      store.authFailure = null;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    mobileController.dispose();
    store.createNewAcntRespModel = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Stack(
        children: [
          Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: Adaptive.h(5)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Back',
                            style: GoogleFonts.poppins(
                                fontSize: 14.px, color: buttonColor),
                          ),
                          Text(
                            'Login',
                            style: GoogleFonts.poppins(
                                fontSize: 14.px, color: buttonColor),
                          ),
                        ],
                      ),
                      sizedBoxHeight40,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create an account',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 30.px),
                        ),
                      ),
                      sizedBoxHeight50,
                      CreateAccountWidget(
                          controller: nameController,
                          label: 'Name',
                          hintText: 'Name'),
                      sizedBoxHeight30,
                      CreateAccountWidget(
                          controller: mobileController,
                          label: 'Mobile Number',
                          hintText: 'Mobile Number *'),
                      sizedBoxHeight30,
                      CreateAccountWidget(
                          controller: emailController,
                          label: 'Email',
                          hintText: 'Email *'),
                      sizedBoxHeight30,
                      CreateAccountWidget(
                          controller: passwordController,
                          label: 'Password',
                          hintText: 'Password *'),
                      sizedBoxHeight30,
                      Text(
                        'We will send you an SMS to verify your email & mobile number',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300, fontSize: 10.3.px),
                      ),
                      sizedBoxHeight40,
                      GestureDetector(
                        onTap: () {
                          if (validateInputs()) {
                            store.signup(
                                nameController.text.trim(),
                                emailController.text.trim(),
                                mobileController.text.trim(),
                                passwordController.text.trim());
                          }
                        },
                        child: ButtonWidget(
                          backgroundColor: buttonColor,
                          title: 'CREATE ACCOUNT',
                          textColor: whiteColor,
                          heights: Adaptive.h(6),
                        ),
                      ),
                      sizedBoxHeight20,
                      InkWell(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'By continuing, I agree of the',
                              style:
                                  GoogleFonts.roboto(color: Color(0XFF505050)),
                            ),
                            TextSpan(
                              text: ' Terms of Use',
                              style: GoogleFonts.roboto(
                                  color: buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.px),
                            ),
                            TextSpan(
                              text: '&',
                              style:
                                  GoogleFonts.roboto(color: Color(0XFF505050)),
                            ),
                            TextSpan(
                              text: ' Privacy \npolicy ',
                              style: GoogleFonts.roboto(
                                  color: buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.px),
                            ),
                          ]),
                        ),
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

  bool validateInputs() {
    if (nameController.text.isEmpty) {
      Get.snackbar('Validation Error', 'Please enter your name');
      return false;
    }
    if (mobileController.text.isEmpty) {
      Get.snackbar('Validation Error', 'Please enter your mobile number');
      return false;
    }
    if (emailController.text.isEmpty) {
      Get.snackbar('Validation Error', 'Please enter your email');
      return false;
    }
    if (passwordController.text.isEmpty) {
      Get.snackbar('Validation Error', 'Please enter your password');
      return false;
    }
    return true;
  }
}

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
  });

  final TextEditingController controller;
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: grey.withOpacity(0.3))),
        labelText: label,
        labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, fontSize: 14.px, color: black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: black),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: grey.withOpacity(0.3)),
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
