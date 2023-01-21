import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_football_career/consts/consts.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title = "",
    this.subtitle = "",
    this.icon,
    this.color,
  });

  final String? title;
  final String? subtitle;

  final String? icon;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(top: 32.h, left: 30.w, right: 34.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              icBAck,
              width: 29.w,
              height: 29.h,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(
                    fontSize: 16.sp, color: blackTitle, fontFamily: regular),
              ),
              Text(
                subtitle!,
                style: TextStyle(fontSize: 12.sp, color: blacksubTitle),
              )
            ],
          ),
          const Spacer(),
          icon == null
              ? Container()
              : Image.asset(
                  icon!,
                  width: 22.w,
                  height: 26.h,
                ),
        ],
      ),
    ));
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 75.h);
}
