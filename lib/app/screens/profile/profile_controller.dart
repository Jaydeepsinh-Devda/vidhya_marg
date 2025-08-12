import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/controllers/theme_controller.dart';

class ProfileController extends GetxController{

  final _themeController = Get.find<ThemeController>();
  
  var isDarkMode = false.obs;

  void darkModeAndLightMode(bool value){
    isDarkMode.value = value;
    _themeController.toggleTheme();
  }
}