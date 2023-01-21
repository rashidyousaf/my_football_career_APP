import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class CustomContainer extends StatelessWidget {
  final Color? borderColor;
  final Color? backgroudColor;
  final Widget? child;

  const CustomContainer(
      {super.key,
      this.child,
      this.backgroudColor = whiteColor,
      this.borderColor = whiteColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroudColor,
          border: Border.all(color: borderColor!),
          borderRadius: BorderRadius.circular(21.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: child,
    );
  }
}
