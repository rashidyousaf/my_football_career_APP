import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:my_football_career/consts/club_list.dart';

import '../consts/consts.dart';

class CustomClubSearch extends StatelessWidget {
  CustomClubSearch(
      {Key? key,
      required this.nameController,
      required this.flagController,
      this.title});

  TextEditingController nameController = TextEditingController();
  String? title;
  TextEditingController flagController = TextEditingController();

  List<DropdownMenuItem<Map<String, String>>> _buildCountryDropDownItems() {
    return countries.map((country) {
      return DropdownMenuItem(
        value: country,
        child: Row(
          children: [
            Image.network(
              country['flag']!,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 8),
            Text(country['name']!),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,
            style: TextStyle(
                fontFamily: regular, fontSize: 14.sp, color: titlegreyColor)),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          height: 45.h,
          child: TypeAheadFormField(
            textFieldConfiguration: TextFieldConfiguration(
              controller: nameController,
              decoration: InputDecoration(
                hintText: " Search club",
                hintStyle: TextStyle(fontSize: 15.sp, color: titlegreyColor),
                fillColor: greyColor,
                filled: true,
                suffixIcon: Icon(
                  Icons.search,
                  color: greenColor,
                  size: 25.sp,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(9.r)),
              ),
            ),
            suggestionsCallback: (pattern) {
              return countries.where((country) => country['name']!
                  .toLowerCase()
                  .contains(pattern.toLowerCase()));
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                title: Row(
                  children: [
                    // Image.network(
                    //   suggestion['flag']!,
                    //   width: 24.w,
                    //   height: 24.h,
                    // ),
                    // SizedBox(width: 8.w),
                    Text(suggestion['name']!),
                  ],
                ),
              );
            },
            onSuggestionSelected: (suggestion) {
              nameController.text = suggestion['name'].toString();
              flagController.text = suggestion['flag'].toString();
            },
            transitionBuilder: (context, suggestionsBox, controller) {
              return suggestionsBox;
            },
            suggestionsBoxDecoration: SuggestionsBoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                elevation: 4.0,
                color: greyColor),
            direction: AxisDirection.down,
          ),
        ),
      ],
    );
  }
}
