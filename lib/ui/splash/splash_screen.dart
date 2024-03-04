import 'package:flutter_svg/svg.dart';
import 'package:untitled2/ui/app_routes.dart';

import '../view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushNamedAndRemoveUntil(
              context,
              RouteNames.tabBox,
              (route) => false,
            ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/svg/greenish/splash_green.svg',
              height: 419,
              width: 367,
            ),
          )
        ],
      ),
    );
  }
}
