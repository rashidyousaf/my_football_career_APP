import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/consts/list.dart';

import '../../common_widgets/bgwidget.dart';
import '../../common_widgets/login_container.dart';
import '../../common_widgets/setting_menu_widget.dart';
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
          ],
        ),
      ),
    );
  }
}
