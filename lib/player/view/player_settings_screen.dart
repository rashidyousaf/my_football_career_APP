import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/setting_menu_widget.dart';
import 'package:my_football_career/consts/list.dart';

import '../../common_widgets/bgwidget.dart';
import '../../common_widgets/login_container.dart';
import '../../consts/consts.dart';

class PlayerSettingsScreen extends StatelessWidget {
  const PlayerSettingsScreen({super.key});

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
                imgProfile: icPPImg,
                imgFlag: icPPFlag,
                name: leoMessi,
                child: Container(),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            loginContainer(
                backgroudColor: whiteColor,
                borderColor: whiteColor,
                child: Column(
                  children: [
                    settingmenuWidget(
                        title: "About", imgPath: icSAbout, onTap: () {}),
                    settingmenuWidget(
                        title: "Privacy", imgPath: icSPrivacy, onTap: () {}),
                    settingmenuWidget(
                        title: "Languages", imgPath: icSLanguage, onTap: () {}),
                    settingmenuWidget(
                        title: "Notifications",
                        imgPath: icSNotifications,
                        onTap: () {}),
                    settingmenuWidget(
                        title: "Upgrade your profile",
                        imgPath: icSUpgrade,
                        onTap: () {}),
                    settingmenuWidget(
                        title: "Edit", imgPath: icSEdit, onTap: () {}),
                    settingmenuWidget(
                        title: "Logout",
                        imgPath: icSLogout,
                        onTap: () {},
                        show: false,
                        textColor: redColor),
                  ],
                ))
            // Container(
            //   decoration: BoxDecoration(
            //       color: whiteColor,
            //       borderRadius: BorderRadius.circular(21.r),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.1),
            //           spreadRadius: 5.r,
            //           blurRadius: 7.r,
            //           offset: const Offset(0, 3), // changes position of shadow
            //         ),
            //       ]),
            //   child: ListView.separated(
            //       shrinkWrap: true,
            //       separatorBuilder: ((context, index) {
            //         return Divider(
            //           indent: 15.w,
            //           endIndent: 15.w,
            //           color: titlegreyColor,
            //         );
            //       }),
            //       itemCount: settingsButtonsList.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return SizedBox(
            //           height: 50.h,
            //           child: ListTile(
            //             // isThreeLine: false,
            //             leading: Image.asset(
            //               settingsIconsList[index],
            //               width: 21.w,
            //               height: 21.h,
            //             ),
            //             trailing: Icon(
            //               Icons.arrow_forward_ios_outlined,
            //               color: greenColor,
            //               size: 20.sp,
            //             ),
            //             title: Text(
            //               settingsButtonsList[index],
            //               style:
            //                   TextStyle(fontSize: 15.sp, fontFamily: regular),
            //             ),
            //           ),
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
