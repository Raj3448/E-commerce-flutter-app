import 'package:ecommerce_seller/presentation/main_section/account/edit_profile_screen/edit_profile_screen.dart';
import 'package:ecommerce_seller/presentation/main_section/account/store/user_store.dart';
import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:ecommerce_seller/utilz/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyAccountComponent extends StatefulWidget {
  MyAccountComponent({Key? key}) : super(key: key);

  @override
  State<MyAccountComponent> createState() => _MyAccountComponentState();
}

class _MyAccountComponentState extends State<MyAccountComponent> {
  final _userStore = GetIt.I<UserStore>();

  @override
  void initState() {
    super.initState();
    _userStore.fetchUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Observer(
          builder: (context) {
            if (_userStore.isLoading) {
              return Center(child: LoadingWidget(showShadow: false,));
            }

            if (_userStore.errorMessage != null) {
              return Center(child: Text(_userStore.errorMessage!));
            }

            if (_userStore.user == null) {
              return Center(child: Text('No user data found.'));
            }

            final user = _userStore.user!;

            return Column(
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
                        Get.to(() => EditProfileScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: buttonColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                  title: Text(user.userName,
                      style: GoogleFonts.poppins(
                          fontSize: 14.px, fontWeight: FontWeight.w500)),
                  subtitle: Text('${user.mobileNumber} | ${user.email}',
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
                      Text(
                        'Remaining wallet amount: ₹10,000 / ₹15,0000',
                        style: GoogleFonts.poppins(
                            fontSize: 12.px, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
