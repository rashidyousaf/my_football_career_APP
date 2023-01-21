import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_football_career/agency/view/agency_home_screen.dart';
import 'package:my_football_career/authentication/login/view/login_screen.dart';
import 'package:my_football_career/authentication/signup/agency/view/agency_info_screen1.dart';
import 'package:my_football_career/authentication/signup/agency/view/agency_info_screen2.dart';
import 'package:my_football_career/authentication/signup/agency/view/agency_info_screen3.dart';
import 'package:my_football_career/authentication/signup/club/view/club_info_screen1.dart';
import 'package:my_football_career/authentication/signup/club/view/club_info_screen2.dart';
import 'package:my_football_career/authentication/signup/club/view/club_info_screen3.dart';
import 'package:my_football_career/authentication/signup/coach/view/coach_info-screen1.dart';
import 'package:my_football_career/authentication/signup/player/view/player_info_screen1.dart';
import 'package:my_football_career/authentication/signup/player/view/player_info_screen2.dart';
import 'package:my_football_career/authentication/signup/view/signup_screen.dart';
import 'package:my_football_career/authentication/signup/view/type_screen/type_screen.dart';
import 'package:my_football_career/club/view/club_home_screen.dart';
import 'package:my_football_career/club/view/create_offer_screens/ccreate_offer_screen1.dart';
import 'package:my_football_career/club/view/create_offer_screens/ccreate_offer_screen2.dart';
import 'package:my_football_career/club/view/offer_detail_screen.dart';
import 'package:my_football_career/coach/view/coach_home_screen.dart';
import 'package:my_football_career/coach/view/coach_offer_detail_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/home_screen/view/home_screen.dart';
import 'package:my_football_career/player/view/player_home_screen.dart';
import 'package:my_football_career/player/view/player_offer_detail_screen.dart';
import 'package:my_football_career/player/view/player_profile_screen.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen1.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen2.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen3.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen4.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen5.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen6.dart';
import 'agency/view/create_offer_screens/acreate_offer_screen7.dart';
import 'authentication/signup/coach/view/coach_info_screen2.dart';
import 'authentication/signup/coach/view/coach_info_screen3.dart';
import 'authentication/signup/coach/view/coach_info_screen4.dart';
import 'authentication/signup/coach/view/coach_info_screen5.dart';
import 'authentication/signup/player/view/player_info_screen3.dart';
import 'authentication/signup/player/view/player_info_screen4.dart';
import 'authentication/signup/player/view/player_info_screen5.dart';
import 'club/view/create_offer_screens/ccreate_offer_screen3.dart';
import 'club/view/create_offer_screens/ccreate_offer_screen4.dart';
import 'club/view/create_offer_screens/ccreate_offer_screen5.dart';
import 'club/view/create_offer_screens/ccreate_offer_screen6.dart';
import 'club/view/create_offer_screens/ccreate_offer_screen7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: appname,
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xffecf7f0),
              fontFamily: regular,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const HomeScreen(),
              '/signupscreen': (context) => const SignupScreen(),
              '/loginscreen': (context) => const LoginScreen(),
              '/typescreen': (context) => const TypeScreen(),
              '/playerinfoscreen1': (context) => const PlayerInfoScreen1(),
              '/playerinfoscreen2': (context) => const PlayerInfoScreen2(),
              '/playerinfoscreen3': (context) => const PlayerInfoScreen3(),
              '/playerinfoscreen4': (context) => const PlayerInfoScreen4(),
              '/playerinfoscreen5': (context) => const PlayerInfoScreen5(),
              '/playerprofilescreen': (context) => const PlayerProfileScreen(),
              '/coachinfoscreen1': (context) => const CoachInfoScreen1(),
              '/coachinfoscreen2': (context) => const CoachInfoScreen2(),
              '/coachinfoscreen3': (context) => const CoachInfoScreen3(),
              '/coachinfoscreen4': (context) => const CoachInfoScreen4(),
              '/coachinfoscreen5': (context) => const CoachInfoScreen5(),
              '/clubinfoscreen1': (context) => const ClubInfoScreen1(),
              '/clubinfoscreen2': (context) => const ClubInfoScreen2(),
              '/clubinfoscreen3': (context) => const ClubInfoScreen3(),
              '/agencyinfoscreen1': (context) => const AgencyInfoScreen1(),
              '/agencyinfoscreen2': (context) => const AgencyInfoScreen2(),
              '/agencyinfoscreen3': (context) => const AgencyInfoScreen3(),
              '/playerhomescreen': (context) => const PlayerHomeScreen(),
              '/coachhomescreen': (context) => const CoachHomeScreen(),
              '/clubhomescreen': (context) => const ClubHomeScreen(),
              '/agencyhomescreen': (context) => const AgencyHomeScreen(),
              '/ccreateofferscreen1': (context) => const CcreateOfferScreen1(),
              '/ccreateofferscreen2': (context) => const CcreateOfferScreen2(),
              '/ccreateofferscreen3': (context) => const CcreateOfferScreen3(),
              '/ccreateofferscreen4': (context) => const CcreateOfferScreen4(),
              '/ccreateofferscreen5': (context) => const CcreateOfferScreen5(),
              '/ccreateofferscreen6': (context) => const CcreateOfferScreen6(),
              '/ccreateofferscreen7': (context) => const CcreateOfferScreen7(),
              '/acreateofferscreen1': (context) => const AcreateOfferScreen1(),
              '/acreateofferscreen2': (context) => const AcreateOfferScreen2(),
              '/acreateofferscreen3': (context) => const AcreateOfferScreen3(),
              '/acreateofferscreen4': (context) => const AcreateOfferScreen4(),
              '/acreateofferscreen5': (context) => const AcreateOfferScreen5(),
              '/acreateofferscreen6': (context) => const AcreateOfferScreen6(),
              '/acreateofferscreen7': (context) => const AcreateOfferScreen7(),
              '/offerdetailscreen': (context) => const OfferDetailScreen(),
              '/playerdetailofferscreen': (context) =>
                  const PlayerDetailOfferScreen(),
              '/coachdetailofferscreen': (context) =>
                  const CoachDetailOfferScreen(),
            },
          );
        });
  }
}
