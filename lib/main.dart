import 'package:flutter_screenutil/flutter_screenutil.dart';
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
import 'package:my_football_career/authentication/signup/view/type_screen.dart';
import 'package:my_football_career/club/view/club_home_screen.dart';
import 'package:my_football_career/coach/view/coach_home_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/home_screen/view/home_screen.dart';
import 'package:my_football_career/player/view/player_home_screen.dart';
import 'package:my_football_career/player/view/player_profile_screen.dart';

import 'authentication/signup/coach/view/coach_info_screen2.dart';
import 'authentication/signup/coach/view/coach_info_screen3.dart';
import 'authentication/signup/coach/view/coach_info_screen4.dart';
import 'authentication/signup/coach/view/coach_info_screen5.dart';
import 'authentication/signup/player/view/player_info_screen3.dart';
import 'authentication/signup/player/view/player_info_screen4.dart';
import 'authentication/signup/player/view/player_info_screen5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(420, 844),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: appname,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.transparent,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
              ),
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
            },
          );
        });
  }
}
