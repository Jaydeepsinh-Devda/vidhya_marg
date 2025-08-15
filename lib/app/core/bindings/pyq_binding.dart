import 'package:get/get.dart';
import 'package:vidhya_marg/app/screens/pyq/pyq_controller.dart';

class PyqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PyqController>(() => PyqController());
  }
}
