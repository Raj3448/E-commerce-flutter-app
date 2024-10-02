// ignore_for_file: library_private_types_in_public_api

import 'package:ecommerce_seller/utilz/colors.dart';
import 'package:flutter/material.dart';


class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key, this.onAppeared, this.showShadow = true});
  final VoidCallback? onAppeared;
  final bool showShadow;

  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  void initState() {
    super.initState();

    if (widget.onAppeared != null) {
      widget.onAppeared!.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 143,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: widget.showShadow
              ? [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2000,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [buttonColor,backGroundColor],
                ).createShader(bounds);
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Transform.scale(
                  scale: 1.5,
                  child: const CircularProgressIndicator(
                    strokeWidth: 5,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(buttonColor),
                  ),
                ),
              ),
            ),
            Text(
              'Please Wait',
              style: TextStyle(fontSize: 14, color: const Color(0xFFCBCACA)),
            ),
          ],
        ),
      ),
    );
  }
}