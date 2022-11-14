import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.height,
      required this.weight});
  final double result;
  final String age;
  final String height;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48.h,
          ),
          Text(
            "Your Result : ",
            style: GoogleFonts.secularOne(
              fontSize: 35.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          // * * Result Dari Hitungan
          Text(
            result.toString(),
            style: GoogleFonts.secularOne(
              fontSize: 90.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          // * * Tabel BMI
          IndicatorCard(
            text1: "Under Weight:",
            text2: "Below 18.5",
            conditionColor: (result <= 18.5)
                ? Theme.of(context).primaryColor
                : const Color(0xFFD9D9D9),
            conditionTextColor:
                (result <= 18.5) ? Colors.white : const Color(0xFF232323),
          ),
          SizedBox(
            height: 15.h,
          ),
          IndicatorCard(
            text1: "Healthy Weight :",
            text2: "18.5 — 24.9",
            conditionColor: (result >= 18.5 && result <= 24.9)
                ? Theme.of(context).primaryColor
                : const Color(0xFFD9D9D9),
            conditionTextColor: (result >= 18.5 && result <= 24.9)
                ? Colors.white
                : const Color(0xFF232323),
          ),
          SizedBox(
            height: 15.h,
          ),
          IndicatorCard(
            text1: "Overweight :",
            text2: "25.0 — 29.9",
            conditionColor: (result <= 29.9 && result >= 25.00)
                ? Theme.of(context).primaryColor
                : const Color(0xFFD9D9D9),
            conditionTextColor: (result <= 29.9 && result >= 25.00)
                ? Colors.white
                : const Color(0xFF232323),
          ),
          SizedBox(
            height: 15.h,
          ),
          IndicatorCard(
            text1: "Obesity :",
            text2: "30.0 and Above",
            conditionColor: (result > 30.0)
                ? Theme.of(context).primaryColor
                : const Color(0xFFD9D9D9),
            conditionTextColor:
                (result > 30.0) ? Colors.white : const Color(0xFF232323),
          ),
          SizedBox(
            height: 10.h,
          ),
          // * * Detail Input User
          Text(
            "Detail :",
            style: GoogleFonts.secularOne(
              fontSize: 22.sp,
              color: const Color(0xFF232323),
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: double.infinity,
            height: 128.h,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0.sp, top: 10.0.sp, bottom: 10.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Age",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Your Height",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Your Weight",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0.sp, top: 10.0.sp, bottom: 10.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ":",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ":",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          ":",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.0.sp, top: 10.0.sp, bottom: 10.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$age yrs",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "$height cm",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "$weight kg",
                          style: GoogleFonts.secularOne(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(
              width: double.infinity,
              height: 60.h,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: GoogleFonts.secularOne(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class IndicatorCard extends StatelessWidget {
  const IndicatorCard({
    Key? key,
    required this.text1,
    required this.text2,
    required this.conditionColor,
    required this.conditionTextColor,
  }) : super(key: key);

  final String text1;
  final String text2;
  final Color conditionColor;
  final Color conditionTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 328.w,
        height: 58.h,
        padding: EdgeInsets.all(13.sp),
        decoration: BoxDecoration(
          // color: const Color(0xFFD9D9D9),
          color: conditionColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: GoogleFonts.secularOne(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: conditionTextColor,
              ),
            ),
            Text(
              text2,
              style: GoogleFonts.secularOne(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: conditionTextColor,
              ),
            ),
          ],
        ));
  }
}
