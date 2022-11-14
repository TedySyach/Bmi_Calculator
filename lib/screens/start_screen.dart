import 'package:bmicalculator/screens/result_screen.dart';
import 'package:bmicalculator/utils/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/bmi_button.dart';
import '../widget/bmi_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //variabel
  int age = 17;
  int weight = 65;
  int height = 165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 25.h,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            width: double.infinity,
            height: 60.0.h,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0.r),
                bottomRight: Radius.circular(10.0.r),
              ),
            ),
            child: Center(
              child: Text(
                "BMI Calculator",
                style: GoogleFonts.secularOne(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Check your Body Mass Index (BMI) to know if you are in shape",
                  style: GoogleFonts.secularOne(
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BmiCard(
                      tittle: "AGE",
                      value: age.toString(),
                      lable: "YRS",
                      //size
                      height: 215,
                      width: 156,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BmiButton(
                              icon: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            BmiButton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ]),
                    ),
                    BmiCard(
                      tittle: "WEIGHT",
                      value: weight.toString(),
                      lable: "KG",
                      //size
                      height: 215,
                      width: 156,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BmiButton(
                              icon: Icons.remove,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            BmiButton(
                              icon: Icons.add,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                BmiCard(
                  tittle: "HEIGHT",
                  value: height.toString(),
                  lable: "CM",
                  //size
                  height: 226,
                  width: double.infinity,
                  child: Slider(
                    min: 100.0,
                    max: 250.0,
                    value: height.toDouble(),
                    activeColor: Colors.white,
                    inactiveColor: Colors.white.withOpacity(0.45),
                    onChanged: ((value) {
                      setState(() {
                        height = value.toInt();
                      });
                    }),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Tap the button below to check your BMI result",
                  style: GoogleFonts.secularOne(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                BigButton(
                  tittle: "Calculate",
                  callBack: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: ((context) {
                        BmiCalculator bmicalculator =
                            BmiCalculator(height: height, weight: weight);
                        return ResultScreen(
                          result: double.parse(bmicalculator.calculateBmi()),
                          age: age.toString(),
                          height: height.toString(),
                          weight: weight.toString(),
                        );
                      }),
                    ));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  const BigButton({
    Key? key,
    required this.tittle,
    required this.callBack,
  }) : super(key: key);

  final String tittle;
  final Function() callBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: callBack,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 20.h),
          ),
        ),
        child: Text(
          tittle,
          style: GoogleFonts.secularOne(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
