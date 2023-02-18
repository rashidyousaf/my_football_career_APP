import 'package:country_picker/country_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/consts/consts.dart';

class CustomCountryPicker extends StatefulWidget {
  CustomCountryPicker({
    super.key,
    required this.countryFlagController,
    //   required this.countryNameController,
    this.title,
  });
  String? title;
  TextEditingController countryFlagController = TextEditingController();
  TextEditingController countryNameController = TextEditingController();
  @override
  State<CustomCountryPicker> createState() => _CustomCountryPickerState();
}

class _CustomCountryPickerState extends State<CustomCountryPicker> {
  String? countryName;

  String? countryFlag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title!,
          style: TextStyle(
              color: titlegreyColor, fontSize: 14.sp, fontFamily: regular),
        ),
        SizedBox(
          height: 6.h,
        ),
        // countery picker
        GestureDetector(
            onTap: () {
              showCountryPicker(
                  context: context,
                  showPhoneCode: false,
                  countryListTheme: CountryListThemeData(
                      textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: const Color.fromARGB(255, 132, 132, 132)),
                      bottomSheetHeight: 600.h,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.r)),
                      inputDecoration: InputDecoration(
                        hintText: 'Start typing to search',
                        labelStyle: TextStyle(fontSize: 20.sp),
                        labelText: 'Search ',
                      )),
                  favorite: ['LU'],
                  onSelect: (Country value) {
                    countryFlag = value.flagEmoji.toString();
                    countryName = value.name.toString();
                    widget.countryFlagController.text = countryFlag.toString();
                    widget.countryNameController.text = countryName.toString();
                    setState(() {});
                  });
            },
            child: Container(
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.all(10.h),
              height: 45.h,
              child: Row(
                children: [
                  Text(
                    countryFlag ?? '',
                    style: TextStyle(color: titlegreyColor, fontSize: 20.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    countryName ?? 'Select',
                    style: TextStyle(fontSize: 15.sp, color: titlegreyColor),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 25.sp,
                    color: greenColor,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
