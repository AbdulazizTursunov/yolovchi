import 'package:flutter_svg/svg.dart';

import '../view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/greenish/splash_green.svg',
            height: 419,
            width: 367,
          )
        ],),
    );
  }
}
