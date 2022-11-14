import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiButton extends StatelessWidget {
  const BmiButton({
    Key? key,
    required this.icon,
    required this.onpressed,
  }) : super(key: key);

  final IconData icon;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        width: 46.0.w,
        height: 46.0.h,
      ),
      elevation: 6,
      child: Icon(
        icon,
        size: 30.sp,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
