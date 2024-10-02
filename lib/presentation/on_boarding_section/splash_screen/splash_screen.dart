

// ignore_for_file: use_build_context_synchronously


import 'package:ecommerce_seller/presentation/main_section/bottom_navigation/bottom_navigation_screen.dart';
import 'package:ecommerce_seller/presentation/on_boarding_section/walk_through/walk_through.dart';
import 'package:ecommerce_seller/utilz/token_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   
    // _wishListController.getMyWishlist(context);
   loginScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    

     // profile.getCurrentLoactioLatAndLot(context);
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          clipBehavior: Clip.hardEdge,
          width: 160,
          height: 160,
          decoration:
              const BoxDecoration( shape: BoxShape.circle),
          child: Center(
            child: Image.asset(
              "assets/images/Group 3.png",
              fit: BoxFit.fill,
             // style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      )
          
          ),
    );
  }

  loginScreen() async{
  
  await Future.delayed(const Duration(seconds: 3));
  final String? token = (await GetIt.I<TokenManager>().getToken())?.toString();
    Get.to(()=> token != null || (token?.isNotEmpty ?? false) ? BottomNavigation() : WalkThroughScreen());
  }
  
}
