import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'data/db/db_initialize.dart';
import 'state_manegmant/bloc/nav_bar/nav_bar_bloc.dart';
import 'ui/bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  Directory? directory;
  if (Platform.isWindows) {
    directory = await getApplicationSupportDirectory();
  } else {
    directory = await getApplicationDocumentsDirectory();
  }

  if (!await directory.exists()) {
    directory.create(recursive: true);
  }
  DatabaseSq().initDb(directory.path);

  runApp(const AppLevel());
}


class AppLevel extends StatelessWidget {
  const AppLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavBarBloc>(
          create: (BuildContext context) => NavBarBloc(),
        ),
      ],
      child:const MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return  MaterialApp(
          theme: ThemeData(
           useMaterial3: true
          ),
          debugShowCheckedModeBanner: false,
          home:const BottomNavBar(),
        );
      },
    );
  }
}
