import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

Widget countrycodeWidget({context}) {
  const countryPicker = FlCountryCodePicker();
  CountryCode? countryCode;
  return TextFormField(
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.none,
    maxLines: 1,
    decoration: InputDecoration(
        fillColor: greyColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.r),
          borderSide: BorderSide(
            color: greyColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: greyColor,
            ),
            borderRadius: BorderRadius.circular(9.r)),
        border: InputBorder.none,
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(10.r)),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            InkWell(
              onTap: () async {
                final code = await countryPicker.showPicker(context: context);
                setState(() {
                  countryCode = code;
                });
              },
              child: Row(
                children: [
                  Image.asset(
                    icArrowN,
                    width: 10.w,
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    countryCode?.dialCode ?? "+1",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            )
          ]),
        )),
  );
}

void setState(Null Function() param0) {}
