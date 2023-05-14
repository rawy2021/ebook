import 'package:ebook/presentation/home/home-screen.dart';
import 'package:ebook/presentation/home/splash-screen.dart';
import 'package:ebook/presentation/home/welcom-screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../presentation/home/arabic-page.dart';
import 'app-routes.dart';


List<GetPage<dynamic>>? routes =[
  GetPage(name: "/", page: () => const WelcomScreen(),),
  GetPage(name: AppRoutes.homeScreen, page: () =>  HomeScreen()),
  GetPage(name: AppRoutes.arabicPage, page: () =>  ArabicPage()),
  GetPage(name: AppRoutes.splashScreen, page: () =>  SplashScreen()),

];