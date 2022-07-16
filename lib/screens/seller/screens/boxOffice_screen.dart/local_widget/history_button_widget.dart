import 'package:cashback_app/commons/box_shadow_helper.dart';
import 'package:cashback_app/commons/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryButton extends StatelessWidget {
  final Function()? function;
  const HistoryButton({
    Key? key,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: 334.w,
        height: 40.h,
        decoration: BoxDecoration(
            color: ThemeHelper.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [BoxShadowHelper.boxShadow50]),
        child: Padding(
          padding: EdgeInsets.only(left: 33.w, right: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 160.w,
                child: const Text(
                  "06.06.22",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(23, 69, 59, 0.8),
                  ),
                ),
              ),
              Text(
                "+80.00",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: ThemeHelper.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}