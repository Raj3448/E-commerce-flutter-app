// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_seller/presentation/on_boarding_section/login_screen/store/login_store.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/reset_password/reset_password_screen.dart';
import 'package:ecommerce_seller/presentation/widgets/button_widgets.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenWithEmail extends StatelessWidget {
  LoginScreenWithEmail({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  final store = GetIt.I<LoginStore>();

  // Email validation RegExp
  final emailRegex = RegExp(
      r"^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Email',
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.px,
                      color: black),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey.withOpacity(0.3))),
                  hintText: 'abc@example.com',
                  hintStyle: TextStyle(
                    color: grey.withOpacity(0.3),
                  ),
                  contentPadding: const EdgeInsets.all(10)),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            TextField(
              controller: passwordController,
              obscureText: true, // Hide password input
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Password',
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.px,
                      color: black),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password*',
                  hintStyle: TextStyle(
                    color: grey.withOpacity(0.3),
                  ),
                  contentPadding: EdgeInsets.all(10)),
            ),
            sizedBoxHeight20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ResetPassword());
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Forget Your Password?',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp, color: Colors.black)),
                    TextSpan(
                      text: ' Reset Here',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.yellow),
                    ),
                  ])),
                )
              ],
            ),
            SizedBox(
              height: Adaptive.h(8),
            ),
            InkWell(
              onTap: () {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();

                if (email.isEmpty || password.isEmpty) {
                  Get.snackbar(
                    'Error',
                    'Email and Password fields cannot be empty!',
                    backgroundColor: Colors.redAccent,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                } else if (!emailRegex.hasMatch(email)) {
                  Get.snackbar(
                    'Invalid Email',
                    'Please enter a valid email address!',
                    backgroundColor: Colors.redAccent,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                } else {
                  store.login(email: email, password: password);
                }
              },
              child: ButtonWidget(
                backgroundColor: buttonColor,
                title: 'Login',
                textColor: Colors.white,
                heights: Adaptive.h(6),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
