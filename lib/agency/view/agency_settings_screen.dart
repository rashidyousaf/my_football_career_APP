import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/consts/list.dart';

import '../../common_widgets/bgwidget.dart';
import '../../common_widgets/login_container.dart';
import '../../consts/consts.dart';

class AgencySettingsScreen extends StatelessWidget {
  const AgencySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgWidget(
        title: 'Settings',
        context: context,
        subtitle: 'Manage Your App',
        icon: Icons.notifications,
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            loginContainer(
              backgroudColor: whiteColor,
              borderColor: whiteColor,
              child: profileWidget(
                imgProfile: icAPImage,
                imgFlag: icAPFlag,
                name: jorgeMendes,
                child: Container(),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(21.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              height: 435.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: ((context, index) {
                      return const Divider(
                        indent: 15,
                        endIndent: 15,
                        color: titlegreyColor,
                      );
                    }),
                    itemCount: settingsButtonsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          settingsIconsList[index],
                          width: 21.w,
                          height: 21.h,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: greenColor,
                        ),
                        title: Text(
                          settingsButtonsList[index],
                          style:
                              TextStyle(fontSize: 15.sp, fontFamily: regular),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
