import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/utils/utils.dart';

class CustomDatepicker extends StatelessWidget {
  CustomDatepicker({super.key, this.contrler, this.dateContrler, this.title});
  final String? title;

  TextEditingController? contrler = TextEditingController();
  TextEditingController? dateContrler = TextEditingController();

  // @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,
            style: TextStyle(
                fontFamily: regular, fontSize: 14.sp, color: titlegreyColor)),
        SizedBox(
          height: 5.h,
        ),
        TextField(
          controller: contrler,
          // validator: ((value) {
          //   if (value!.isEmpty) {
          //     return ' Requird';
          //     return null;
          //   }
          // }),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: greenColor, // <-- SEE HERE
                        onPrimary: whiteColor, // <-- SEE HERE
                        onSurface: greenColor, // <-- SEE HERE
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          primary: greenColor, // button text color
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(
                    1970), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              String formattedDate =
                  DateFormat('dd/MM/yyyy').format(pickedDate);
              contrler!.text = formattedDate;

              final DateTime currentDate = DateTime.now();
              final Duration difference = currentDate.difference(pickedDate);
              final int age = (difference.inDays / 365.25).floor();
              dateContrler!.text = age.toString();
              print('Age: $dateContrler years');
            } else {
              Utils().toastMessage("Date is not selected");
            }
          },

          readOnly: true,
          style: TextStyle(
              color: blackTitle, fontSize: 15.sp, fontFamily: regular),
          cursorColor: greenColor,

          autocorrect: false,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
            suffixIcon: Icon(
              Icons.calendar_month_outlined,
              color: greenColor,
              size: 30.sp,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.r),
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.5.w),
              borderRadius: BorderRadius.circular(9.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.5.w),
              borderRadius: BorderRadius.circular(9.r),
            ),
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: hintgreyColor),
            hintText: 'Select Date',
            isDense: true,
            fillColor: greyColor,
            filled: true,
          ),
        ),
      ],
    );
  }
}
