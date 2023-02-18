import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/player/controller/home_controller.dart';
import 'package:my_football_career/player/view/player_messages_screen.dart';
import 'package:my_football_career/player/view/player_offers_screen.dart';
import 'package:my_football_career/player/view/player_profile_screen.dart';
import 'package:my_football_career/player/view/player_settings_screen.dart';
import 'package:provider/provider.dart';

import '../../authentication/signup/player/controller/player_auth_controller.dart';

class PlayerHomeScreen extends StatelessWidget {
  const PlayerHomeScreen({super.key});

  // int _selectedIndex = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    final playerController = Provider.of<PlayerAuthController>(context);

    //init home controller
    final mp = Provider.of<NavbarProvider>(context, listen: false);

    //navbar items list
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPProfile,
            width: 21.w,
            height: 21.h,
          ),
          label: profile),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPOffer,
            width: 20.w,
            height: 20.h,
          ),
          label: offers),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPMessages,
            width: 21.w,
            height: 15.h,
          ),
          label: messages),
      BottomNavigationBarItem(
          icon: Image.asset(
            icPPSettings,
            width: 20.w,
            height: 21.h,
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
            Consumer<NavbarProvider>(builder: ((context, value, child) {
              return Expanded(
                child: navBody.elementAt(value.index),
              );
            }))
          ],
        ),
        bottomNavigationBar: Consumer<NavbarProvider>(
          builder: (context, value, child) {
            return BottomNavigationBar(
              currentIndex: mp.index,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedItemColor: greenColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              items: navbarItem,
              onTap: (value1) {
                value.updateIndex(value1);
              },
            );
          },
        ));
  }
}
