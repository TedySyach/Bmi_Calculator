import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    required this.tittle,
    required this.value,
    required this.child,
    required this.lable,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String tittle;
  final String value;
  final Widget child;
  final String lable;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittle,
            style: GoogleFonts.secularOne(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style: GoogleFonts.secularOne(
                  fontSize: 64.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 5.0.w,
              ),
              Text(
                lable,
                style: GoogleFonts.secularOne(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          child,
        ],
      ),
    );
  }
}
