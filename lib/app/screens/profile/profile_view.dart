import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/screens/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final ProfileController _controller = Get.find<ProfileController>();

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.kProfile)),
      body: _scaffoldBody(context),
    );
  }

  //! Widget Methods
  Widget _scaffoldBody(BuildContext context) => SafeArea(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.width(16),
        vertical: SizeConfig.height(16),
      ),
      child: Column(children: [_darkModeSwitchRow(context)]),
    ),
  );

  Widget _darkModeSwitchRow(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(AppString.kDarkMode, style: Theme.of(context).textTheme.bodyLarge),
      _darkModeSwitch(),
    ],
  );

  Widget _darkModeSwitch() => Obx(
    () => Switch(
      activeColor: AppColors.lightViolet,
      activeTrackColor: AppColors.navBarColor,
      value: _controller.isDarkMode.value,
      onChanged: (value) {
        _controller.darkModeAndLightMode(value);
      },
    ),
  );
}
