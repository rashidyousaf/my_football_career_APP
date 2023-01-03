import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/view/player_messages_screen.dart';
import 'package:my_football_career/player/view/player_offers_screen.dart';
import 'package:my_football_career/player/view/player_profile_screen.dart';
import 'package:my_football_career/player/view/player_settings_screen.dart';

import '../controller/home_controller.dart';

class PlayerHomeScreen extends StatelessWidget {
  const PlayerHomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    //init home controller
    var controller = Get.put(HomeController());
    //navbar items list
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPProfile,
            width: 26.w,
          ),
          label: profile),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPOffer,
            width: 26.w,
          ),
          label: offers),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPMessages,
            width: 26.w,
          ),
          label: messages),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPSettings,
            width: 26.w,
          ),
          label: settings),
    ];
    //navbar body list
    var navBody = [
      const PlayerProfileScreen(),
      const PlayerOffersScreen(),
      const PlayerMessagesScreen(),
      const PlayerSettingsScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() => (BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: greenColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          }))),
    );
  }
}