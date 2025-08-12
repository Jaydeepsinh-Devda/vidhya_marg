import 'package:vidhya_marg/app/core/controllers/theme_controller.dart';
import 'package:vidhya_marg/app/core/routes/app_pages.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_icons.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
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
        title: 'Vidhya Marg',
        theme: themeController.lightTheme,
        darkTheme: themeController.darkTheme,
        themeMode: themeController.themeMode.value,
        getPages: AppPages.routes,
        initialRoute: AppRoutes.home,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Widget> pages = [HomeView(), ProfileView()];
  final themeController = Get.find<ThemeController>();

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => PersistentTabView(
          tabs: [
            PersistentTabConfig(
              screen: HomeView(),
              item: ItemConfig(
                icon: SvgPicture.asset(AppIcons.homeActive),
                inactiveIcon: SvgPicture.asset(
                  AppIcons.home,
                  colorFilter: (themeController.themeMode == ThemeMode.light)
                      ? null
                      : ColorFilter.mode(AppColors.lightGrey, BlendMode.srcIn),
                ),
                title: AppString.kHome,
                activeForegroundColor: AppColors.navBarColor,
                inactiveForegroundColor:
                    (themeController.themeMode == ThemeMode.light)
                    ? AppColors.blackText
                    : AppColors.lightGrey,
              ),
            ),
            PersistentTabConfig(
              screen: ProfileView(),
              item: ItemConfig(
                icon: SvgPicture.asset(AppIcons.profileActive),
                inactiveIcon: SvgPicture.asset(
                  AppIcons.profile,
                  colorFilter: (themeController.themeMode == ThemeMode.light)
                      ? null
                      : ColorFilter.mode(AppColors.lightGrey, BlendMode.srcIn),
                ),
                title: AppString.kProfile,
                activeForegroundColor: AppColors.navBarColor,
                inactiveForegroundColor:
                    (themeController.themeMode == ThemeMode.light)
                    ? AppColors.blackText
                    : AppColors.lightGrey,
              ),
            ),
          ],
          navBarBuilder: (navBarConfig) {
            return Style1BottomNavBar(
              navBarConfig: navBarConfig,
              navBarDecoration: NavBarDecoration(
                color: (themeController.themeMode == ThemeMode.light)
                    ? AppColors.navBarBackgroundColor
                    : AppColors.blackText,
              ),
            );
          },
        ),
      ),
    );
  }
}
