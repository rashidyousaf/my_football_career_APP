import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_football_career/coach/view/coach_messages_screen.dart';
import 'package:my_football_career/coach/view/coach_offers_screen.dart';
import 'package:my_football_career/coach/view/coach_profile_screen.dart';
import 'package:my_football_career/coach/view/coach_settings_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:provider/provider.dart';

import '../../player/controller/home_controller.dart';

class CoachHomeScreen extends StatelessWidget {
  const CoachHomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    //init home controller
    final mp = Provider.of<NavbarProvider>(context, listen: false);
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
      const CoachProfileScreen(),
      const CoachOffersScreen(),
      const CoachMessagesScreen(),
      const CoachSettingsScreen(),
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
