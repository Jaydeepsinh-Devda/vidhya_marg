
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var currentAffairs = [].obs;

  @override
  void onInit() {
    fetchCurrentAffairs();
    super.onInit();
  }

  void fetchCurrentAffairs() async {
    isLoading.value = true;
    // currentAffairs.value = await SupabaseService().getCurrentAffairs();
    isLoading.value = false;
  }
}