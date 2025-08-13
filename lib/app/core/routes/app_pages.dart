import 'package:vidhya_marg/app/core/bindings/main_screen.bindings.dart';
import 'package:vidhya_marg/app/core/bindings/study_material_bindings.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/screens/study_material/study_material_view.dart';
import 'package:vidhya_marg/main.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.mainScreen,
      page: () => MainScreen(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.studyMaterial,
      page: () => StudyMaterialView(),
      binding: StudyMaterialBindings(),
    ),
  ];
}
