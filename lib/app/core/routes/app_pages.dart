import 'package:vidhya_marg/app/core/bindings/home_binding.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:vidhya_marg/app/screens/home/home_view.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
