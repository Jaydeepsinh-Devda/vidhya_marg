import 'package:vidhya_marg/app/core/controllers/theme_controller.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_icons.dart';
import 'package:vidhya_marg/app/screens/home/home_view.dart';
import 'package:vidhya_marg/app/screens/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeController = Get.find<ThemeController>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'Exam Prep',
        theme: themeController.lightTheme,
        darkTheme: themeController.darkTheme,
        themeMode: themeController.themeMode.value,
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Widget> pages = [HomeView(), ProfileView()];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: HomeView(),
            item: ItemConfig(
              icon: SvgPicture.asset(AppIcons.homeActive),
              inactiveIcon: SvgPicture.asset(AppIcons.home),
              title: "Home",
              activeForegroundColor: AppColors.navBarColor,
            ),
          ),
          PersistentTabConfig(
            screen: ProfileView(),
            item: ItemConfig(
              icon: SvgPicture.asset(AppIcons.profileActive),
              inactiveIcon: SvgPicture.asset(AppIcons.profile),
              title: "Profile",
              activeForegroundColor: AppColors.navBarColor,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) =>
            Style1BottomNavBar(navBarConfig: navBarConfig),
      ),
    );
  }
}
