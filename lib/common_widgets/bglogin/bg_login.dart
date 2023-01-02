import 'package:my_football_career/consts/consts.dart';

Widget bgLogin({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(bgImg), fit: BoxFit.fill)),
    child: child,
  );
}
