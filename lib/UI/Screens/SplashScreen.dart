import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Widgets/AppBackgroundImage.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundImage(Child: Center(child: SvgPicture.asset('Assets/Images/logo.svg',width:170 ),),
    ));
  }
}
