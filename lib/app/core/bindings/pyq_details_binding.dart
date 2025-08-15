import 'package:get/get.dart';
import '../../screens/pyq_details/pyq_details_controller.dart';

class PyqDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PyqDetailsController>(() => PyqDetailsController());
  }
}