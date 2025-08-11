import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/screens/home/home_controller.dart';

class CurrentAffairsSection extends StatelessWidget {
  final HomeController controller;

  const CurrentAffairsSection({required this.controller, super.key});

  //! Widget Methods
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _currentAffairsText(context),
        SizedBox(height: SizeConfig.height(12)),
        _currentAffairsStoryBubbles(context),
      ],
    );
  }

  //! Widget Methods
  Widget _currentAffairsText(BuildContext context) => Padding(
    padding: EdgeInsets.only(
      left: SizeConfig.width(16),
      top: SizeConfig.height(8),
    ),
    child: Text(
      AppString.kCurrentAffairs,
      style: Theme.of(
        context,
      ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
    ),
  );

  Widget _currentAffairsStoryBubbles(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3,
      child: _bubbleList(),
    );
  }

  Widget _bubbleList() => ListView.separated(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: 10,
    separatorBuilder: (context, index) => SizedBox(width: SizeConfig.width(8)),
    itemBuilder: (context, index) {
      final color =
          controller.storyColors[index % controller.storyColors.length];
      return Padding(
        padding: EdgeInsets.only(left: SizeConfig.width(16)),
        child: Column(
          children: [
            _circularAvatar(color),
            SizedBox(height: SizeConfig.height(4)),
            Text("Today", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      );
    },
  );

  Widget _circularAvatar(Color color) => CircleAvatar(
    radius: SizeConfig.height(40),
    backgroundColor: AppColors.lightGrey,
    child: CircleAvatar(radius: SizeConfig.height(38), backgroundColor: color),
  );
}
