import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var currentAffairs = [].obs;

  // Color List
  final List<Color> storyColors = [
    AppColors.lightBlue,
    AppColors.lightOrange,
    AppColors.lightGreen,
    AppColors.lightViolet,
  ];

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
