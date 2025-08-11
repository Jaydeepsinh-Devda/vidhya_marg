import 'package:vidhya_marg/app/core/bindings/main_screen.bindings.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/main.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => MainScreen(),
      binding: MainScreenBinding(),
    ),
  ];
}
