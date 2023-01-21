import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import '../../common_widgets/custom_container.dart';
import '../../common_widgets/setting_menu_widget.dart';
import '../../consts/consts.dart';

class CoachSettingsScreen extends StatelessWidget {
  const CoachSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: settings,
        subtitle: manageYourApp,
        icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            CustomContainer(
              child: profileWidget(
                imgProfile: icCPImage,
                imgFlag: icCPFlag,
                name: thomasTuchel,
                child: Container(),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            CustomContainer(
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
