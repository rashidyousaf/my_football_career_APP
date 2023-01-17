import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/colors.dart';
import 'package:my_football_career/consts/consts.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomAppbar({super.key, this.title = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "personal",
          style: TextStyle(color: blackTitle),
        ),
        backgroundColor: bColor,
        leading: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.w),
          child: Image.asset(
            icBAck,
            width: 20.w,
            height: 20.h,
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: greenColor,
          )
        ],
      ),
    );
  }
}
