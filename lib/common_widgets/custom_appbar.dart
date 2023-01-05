// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:my_football_career/consts/images.dart';

// class CustomAppbar extends StatelessWidget {
//   String title;
//   String subtitle;

//   CustomAppbar({super.key, this.title = "", this.subtitle = ""});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         InkWell(
//           onTap: () => Navigator.pop(context),
//           child: Image.asset(
//             icBAck,
//             height: 29.h,
//             width: 29.w,
//           ),
//         ),
//         SizedBox(
//           width: 16.sp,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(fontSize: 16.sp, fontFamily: regular),
//             ),
//             Text(
//               subtitle!,
//               style: TextStyle(fontSize: 12.sp),
//             ),
//           ],
//         ),
//         const Spacer(),
//         Icon(
//           icon,
//           color: greenColor,
//         )
//       ],
//     );
//   }
// }
