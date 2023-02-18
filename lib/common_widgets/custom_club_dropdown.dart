// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../consts/club_list.dart';
// import '../consts/consts.dart';

// class CustomClubDropdown extends StatefulWidget {
//   CustomClubDropdown({
//     super.key,
//     required this.title,
//   });
//   String title;

//   @override
//   State<CustomClubDropdown> createState() => _CustomClubDropdownState();
// }

// class _CustomClubDropdownState extends State<CustomClubDropdown> {
//   final TextEditingController textEditingController = TextEditingController();
//   @override
//   void dispose() {
//     textEditingController.dispose();
//     super.dispose();
//   }

//   // List clunameList;
//   @override
//   Widget build(BuildContext context) {
//     String? SelectedValue;
//     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       Text(
//         widget.title,
//         style: TextStyle(
//             color: titlegreyColor, fontSize: 14.sp, fontFamily: regular),
//       ),
//       SizedBox(
//         height: 6.h,
//       ),
//       Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//         height: 45.h,
//         decoration: BoxDecoration(
//             color: greyColor, borderRadius: BorderRadius.circular(9.r)),
//         child: DropdownButton2(
//             searchController: textEditingController,
//             // decoration: InputDecoration(
//             //   hintText: 'Select',
//             //   hintStyle: TextStyle(fontSize: 15.sp, fontFamily: regular),
//             //   isDense: true,
//             //   contentPadding: EdgeInsets.zero,
//             //   enabledBorder:
//             //       OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
//             // ),
//             buttonHeight: 45.h,
//             icon: Icon(
//               Icons.arrow_drop_down,
//               size: 25.sp,
//               color: greenColor,
//             ),
//             items: clubNameList.asMap().entries.map((entry) {
//               int index = entry.key;
//               String item = entry.value;
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Row(
//                   children: <Widget>[
//                     Image.network(
//                       clubIconList[index],
//                       width: 20.w,
//                       height: 20.h,
//                     ),
//                     SizedBox(width: 8.w),
//                     Text(item),
//                   ],
//                 ),
//               );
//             }).toList(),
//             onChanged: (newValue) {
//               SelectedValue = newValue;
//               print("selected value  ${SelectedValue}");
//             }),
//       ),
//     ]);
//   }
// }
