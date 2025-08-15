import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Coming Soon",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(color: AppColors.grey),
      ),
    );
  }
}
