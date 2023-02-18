import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/common_widgets/custom_appbar.dart';
import 'package:my_football_career/common_widgets/custom_container.dart';
import 'package:my_football_career/common_widgets/profile_widget1.dart';
import 'package:my_football_career/common_widgets/setting_menu_widget.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:provider/provider.dart';
import '../../authentication/signup/player/model/player_model.dart';
import '../../consts/consts.dart';
import '../../services/firestore_service.dart';
import '../controller/home_controller.dart';

class PlayerSettingsScreen extends StatelessWidget {
  const PlayerSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    FirestoreService fS = FirestoreService();

    final np = Provider.of<NavbarProvider>(context);
    return Scaffold(
      appBar: const CustomAppbar(
        title: settings,
        subtitle: manageYourApp,
        // icon: icBell,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: FutureBuilder(
            future: fS.getPlayerInfo(),
            builder: (context, data) {
              if (data.connectionState == ConnectionState.done) {
                if (data.hasData) {
                  PlayerModel userdata = data.data as PlayerModel;
                  return Column(
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomContainer(
                        child: profileWidget(
                          imgProfile: "${userdata.validYourIdendity1}",
                          imgFlag: "${userdata.nationality}",
                          name: "${userdata.firstName} ${userdata.lastName}",
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
                              title: "Privacy",
                              imgPath: icSPrivacy,
                              onTap: () {}),
                          settingmenuWidget(
                              title: "Languages",
                              imgPath: icSLanguage,
                              onTap: () {}),
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
                          InkWell(
                            onTap: () {
                              auth
                                  .signOut(context)
                                  .then((value) {})
                                  .onError((error, stackTrace) {
                                Utils().toastMessage(error.toString());
                              });
                              np.updateIndex(0);
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/loginscreen', (route) => false);
                            },
                            child: settingmenuWidget(
                                title: "Logout",
                                imgPath: icSLogout,
                                onTap: () {},
                                show: false,
                                textColor: redColor),
                          ),
                        ],
                      ))
                    ],
                  );
                } else if (data.hasError) {
                  return Center(
                    child: Text(data.error.toString()),
                  );
                } else {
                  return const Center(child: Text('somthing wrong'));
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: greenColor,
                  ),
                );
              }
            }),
      ),
    );
  }
}
