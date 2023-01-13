import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/bgwidget.dart';
import 'package:my_football_career/common_widgets/dropdown_widget.dart';
import 'package:my_football_career/common_widgets/login_container.dart';
import 'package:my_football_career/common_widgets/our_button.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/consts/list.dart';

class PlayerInfoScreen2 extends StatefulWidget {
  const PlayerInfoScreen2({super.key});

  @override
  State<PlayerInfoScreen2> createState() => _PlayerInfoScreen2State();
}

class _PlayerInfoScreen2State extends State<PlayerInfoScreen2> {
  List<String> _items1 = ['item1', 'item2', 'item3'];
  List<String> _items2 = ['item4', 'item5', 'item6'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroudColor,
      body: bgWidget(
        context: context,
        title: playerCharacteristics,
        subtitle: '',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Text(
              "2/5",
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: bold,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              child: Image.asset(
                icProgress2,
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
                  padding: const EdgeInsets.all(19),
                  child: Column(
                    children: [
                      dropdownWidget(
                          title: youMainPosition,
                          itemList: postionList,
                          hintvalue: 'Select'),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                        title: yourSecondPosition,
                        itemList: postionList,
                        hintvalue: "Select",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                        title: height,
                        itemList: heightList,
                        hintvalue: "Select",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                        title: weight,
                        itemList: weightList,
                        hintvalue: "Select",
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      dropdownWidget(
                        title: yourStrongFoot,
                        itemList: strongfootList,
                        hintvalue: "Select",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ourButton(
                        color: greenColor,
                        title: next,
                        textColor: whiteColor,
                        onPress: () {
                          Navigator.pushNamed(context, '/playerinfoscreen3');
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
