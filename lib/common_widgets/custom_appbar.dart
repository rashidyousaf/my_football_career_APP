import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_football_career/consts/consts.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      this.title = "",
      this.subtitle = "",
      this.leading,
      this.icon});

  final String? title;
  final String? subtitle;
  final Widget? leading;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 80.h);
}
