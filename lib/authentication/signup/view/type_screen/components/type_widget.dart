import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import '../../../../../consts/consts.dart';

class TypeWidget extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? onTap;

  const TypeWidget(
      {super.key, this.img, this.title, this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 77.h,
      child: InkWell(
        onTap: (() => Navigator.pushNamed(context, onTap!)),
        child: CustomContainer(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 8.h,
                  bottom: 8.h,
                  left: 8.w,
                ),
                padding: EdgeInsets.all(8.r),
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: backgroudColor,
                  borderRadius: BorderRadius.all(Radius.circular(9.r)),
                ),
                child: Image.asset(
                  img!,
                  width: 42.w,
                  height: 43.h,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 19.h,
                  ),
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: regular,
                      color: blackTitle,
                    ),
                  ),
                  Text(
                    subtitle!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: regular,
                      color: blacksubTitle,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                icArrow1,
                width: 29.w,
                height: 29.h,
              ),
              SizedBox(
                width: 13.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
