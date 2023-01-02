import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

Widget dropdownWidget({
  String? title,
  String? hintvalue,
  List? itemList,
}) {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title!,
        style: TextStyle(fontSize: 14.sp, color: titlegreyColor),
      ),
      SizedBox(
        height: 7.h,
      ),
      SizedBox(
        height: 47.h,
        child: DropdownButtonFormField2(
          decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: greyColor)),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: greyColor),
                borderRadius: BorderRadius.circular(9.r),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: greyColor,
                ),
              )
              //Add more decoration as you want here
              //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
              ),
          isExpanded: true,
          hint: Text(
            hintvalue!,
            style: TextStyle(fontSize: 14.sp),
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: greenColor,
          ),
          iconSize: 30,
          buttonHeight: 47.h,
          buttonPadding: const EdgeInsets.only(left: 20, right: 10),
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.r),
          ),
          buttonDecoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(9.r)),
          items: itemList!
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Please select gender.';
            }
          },
          onChanged: (value) {
            //Do something when changing the item if you want.
          },
          onSaved: (value) {
            selectedValue = value.toString();
          },
        ),
      ),
    ],
  );
}
