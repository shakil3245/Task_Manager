import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AppBackgroundImage extends StatelessWidget {

  final Child;

  const AppBackgroundImage({super.key, required this.Child});

  @override
  Widget build(BuildContext context) {

    final Size ScreenSize = MediaQuery.of(context).size;
    return  Stack(
      children: [
        SvgPicture.asset('Assets/Images/background_img.svg',height: ScreenSize.height,fit: BoxFit.cover,),
        Child,
      ],
    );
  }
}
