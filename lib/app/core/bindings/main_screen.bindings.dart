import 'package:get/get.dart';
import 'package:vidhya_marg/app/screens/profile/profile_controller.dart';
import '../../screens/home/home_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}