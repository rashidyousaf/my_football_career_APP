import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/custom_textfield.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class PlayerInfoScreen3 extends StatefulWidget {
  const PlayerInfoScreen3({super.key});

  @override
  State<PlayerInfoScreen3> createState() => _PlayerInfoScreen3State();
}

class _PlayerInfoScreen3State extends State<PlayerInfoScreen3> {
  String? SelectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: bgWidget(
        context: context,
        title: actualSituation,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(
                text: '3',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: greenColor,
                    fontFamily: regular,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                      text: '/5',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: semibold,
                          fontWeight: FontWeight.w700,
                          color: blackTitle)),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              child: Image.asset(
                icProgress3,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            loginContainer(
                borderColor: whiteColor,
                backgroudColor: whiteColor,
                child: Container(
                  padding: EdgeInsets.all(19.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        actualClub,
                        style: TextStyle(
                            color: titlegreyColor,
                            fontSize: 14.sp,
                            fontFamily: regular),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(9.r)),
                          child: DropdownButtonFormField2<String>(
                              decoration: InputDecoration(
                                hintText: 'Select',
                                hintStyle: TextStyle(
                                    fontSize: 15.sp, fontFamily: regular),
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: greyColor)),
                              ),
                              buttonHeight: 45.h,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                size: 25.sp,
                                color: greenColor,
                              ),
                              items: drop.asMap().entries.map((entry) {
                                int index = entry.key;
                                String item = entry.value;
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Row(
                                    children: <Widget>[
                                      Image.network(
                                        dropicon[index],
                                        width: 20.w,
                                        height: 20.h,
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(item),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                SelectedValue = newValue;
                              })),
                      SizedBox(
                        height: 15.h,
                      ),
                      customTextfield(
                        title: underContractUntil,
                        hint: '',
                        isPass: false,
                        titleColor: titlegreyColor,
                        bgColor: greyColor,
                        borderColor: greyColor,
                        icon: Icons.date_range,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                          title: availableTransfer,
                          itemList: availabletransferList,
                          hintvalue: 'Select'),
                      SizedBox(
                        height: 15.h,
                      ),
                      customTextfield(
                        title: transferCoasts,
                        titleColor: titlegreyColor,
                        isPass: false,
                        borderColor: greyColor,
                        bgColor: greyColor,
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      dropdownWidget(
                        title: jerseynumber,
                        itemList: jerseynumberList,
                        hintvalue: 'Select',
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: next,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/playerinfoscreen4');
                        },
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
