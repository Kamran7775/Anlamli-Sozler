import 'package:anlamli_sozler/screen/splash_screen_page_vierw.dart';
import 'package:anlamli_sozler/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const AnlamliSozler());
}

class AnlamliSozler extends StatelessWidget {
  const AnlamliSozler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, widget) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Anlamlı Sözler',
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                    centerTitle: true,
                    backgroundColor: AppColors.appBarColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30.r),
                    )),
                    elevation: 0,
                    titleTextStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17.sp)),
                scaffoldBackgroundColor: AppColors.primaryColor,
                primaryColor: AppColors.primaryColor,
              ),
              home: const SplashScreen(),
            ),
        designSize: const Size(375, 812));
  }
}
