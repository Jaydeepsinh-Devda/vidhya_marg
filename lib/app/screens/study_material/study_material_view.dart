import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/screens/study_material/study_material_controller.dart';
import 'package:vidhya_marg/app/screens/study_material/widgets/custom_subject_card.dart';

class StudyMaterialView extends StatelessWidget {
  StudyMaterialView({super.key});

  final StudyMaterialController _controller =
      Get.find<StudyMaterialController>();

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.height(16)),
          child: _subjectListView(),
        ),
      ),
    );
  }

  //! Widget Methods
  PreferredSizeWidget _appBar() =>
      AppBar(title: Text(AppString.kStudyMaterial), titleSpacing: 0);

  Widget _subjectListView() => ListView.separated(
    separatorBuilder: (context, index) =>
        SizedBox(height: SizeConfig.height(28)),
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (context, index) {
      final color =
          _controller.labelColors[index % _controller.labelColors.length];
      return CustomSubjectCard(color: color);
    },
  );
}
