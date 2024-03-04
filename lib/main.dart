import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/data/storage_repository/storage_repository.dart';
import 'package:untitled2/network/api_service/api_service.dart';
import 'package:untitled2/state_manegmant/bloc/nav_bar/nav_bar_bloc.dart';
import 'package:untitled2/state_manegmant/bloc/social_auth_bloc/social_auth_bloc.dart';
import 'package:untitled2/ui/app_routes.dart';
import 'package:untitled2/ui/auth/login/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.getInstance();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(App(apiService: ApiService()));
}

class App extends StatelessWidget {
  const App({super.key, required this.apiService});

  final ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBarBloc>(
          create: (BuildContext context) => NavBarBloc(),
        ),
        BlocProvider<SocialAuthBloc>(
          create: (BuildContext context) => SocialAuthBloc(AuthRepository()),
        ),
      ],
      child: EasyLocalization(
          supportedLocales: const [
            Locale('ru', 'RU'),
            Locale('uz', 'UZ'),
            Locale('uz', 'Cyrl'),
          ],
          path: 'assets/translations',
          fallbackLocale: const Locale('uz', 'UZ'),
          child: const MyApp()),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: AppRoutes.generateRoute,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        );
      },
    );
  }
}
