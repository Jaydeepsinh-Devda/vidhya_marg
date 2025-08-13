import 'package:get/get.dart';
import 'package:vidhya_marg/app/screens/study_material/study_material_controller.dart';

class StudyMaterialBindings extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut<StudyMaterialController>(() => StudyMaterialController());
  }
}