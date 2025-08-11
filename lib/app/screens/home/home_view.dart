import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/screens/home/home_controller.dart';
import 'package:vidhya_marg/app/screens/home/widgets/current_affairs_section.dart';
import 'package:vidhya_marg/app/ui_components/custom_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controller = Get.find<HomeController>();

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.kHome)),
      body: _scaffoldBody(context),
    );
  }

  //! Widget Methods
  Widget _scaffoldBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CurrentAffairsSection(controller: controller),
            _studyMaterialCard(),
            _quizCard(),
            _pyqCard(),
            _updatesCard(),
            _currentAffairCard(),
          ],
        ),
      ),
    );
  }

  Widget _studyMaterialCard() => CustomCard(
    title: AppString.kStudyMaterial,
    subtitle: AppString.kStudyMaterialSubtitle,
    color: AppColors.lightViolet.withValues(alpha: 0.6),
    onCardClick: () {},
  );

  Widget _quizCard() => CustomCard(
    title: AppString.kQuiz,
    subtitle: AppString.kQuizSubtitle,
    color: AppColors.lightOrange.withValues(alpha: 0.6),
    onCardClick: () {},
  );

  Widget _pyqCard() => CustomCard(
    title: AppString.kPYQs,
    subtitle: AppString.kPYQsSubtitle,
    color: AppColors.lightGreen.withValues(alpha: 0.6),
    onCardClick: () {},
  );

  Widget _updatesCard() => CustomCard(
    title: AppString.kUpdates,
    subtitle: AppString.kUpdatesSubtitle,
    color: AppColors.lightBlue.withValues(alpha: 0.6),
    onCardClick: () {},
  );

  Widget _currentAffairCard() => CustomCard(
    title: AppString.kCurrentAffairs,
    subtitle: AppString.kCurrentAffairsSubtitle,
    color: AppColors.lightViolet.withValues(alpha: 0.6),
    onCardClick: () {},
  );
}
