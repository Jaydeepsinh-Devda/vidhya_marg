import 'package:vidhya_marg/app/core/bindings/main_screen.bindings.dart';
import 'package:vidhya_marg/app/core/bindings/pyq_binding.dart';
import 'package:vidhya_marg/app/core/bindings/pyq_details_binding.dart';
import 'package:vidhya_marg/app/core/bindings/study_material_bindings.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/screens/current_affairs/current_affairs_view.dart';
import 'package:vidhya_marg/app/screens/pyq/pyq_view.dart';
import 'package:vidhya_marg/app/screens/pyq_details/pyq_details_view.dart';
import 'package:vidhya_marg/app/screens/quiz/quiz_view.dart';
import 'package:vidhya_marg/app/screens/study_material/study_material_view.dart';
import 'package:vidhya_marg/app/screens/updates/updates_view.dart';
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
    GetPage(name: AppRoutes.pyq, page: () => PyqView(), binding: PyqBinding()),
    GetPage(
      name: AppRoutes.pyqDetails,
      page: () => PyqDetailsView(),
      binding: PyqDetailsBinding(),
    ),
    GetPage(name: AppRoutes.updates, page: () => UpdatesView()),
    GetPage(name: AppRoutes.quiz, page: () => QuizView()),
    GetPage(name: AppRoutes.currentAffairs, page: () => CurrentAffairsView()),
  ];
}
