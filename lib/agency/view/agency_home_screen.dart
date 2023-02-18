import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/agency/view/Agency_offers_screen.dart';
import 'package:my_football_career/agency/view/agency_profile_screen.dart';
import 'package:my_football_career/agency/view/agency_settings_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../player/controller/home_controller.dart';
import 'agency_messages_screen.dart';

class AgencyHomeScreen extends StatelessWidget {
  const AgencyHomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    //init home controller
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
      const AgencyProfileScreen(),
      const AgencyOffersScreen(),
      const AgencyMessagesScreen(),
      const AgencySettingsScreen(),
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
        bottomNavigationBar:
            Consumer<NavbarProvider>(builder: ((context, value, child) {
          return BottomNavigationBar(
            currentIndex: value.index,
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            selectedItemColor: greenColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            items: navbarItem,
            onTap: (value1) {
              value.updateIndex(value1);
            },
          );
        })));
  }
}
