import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';

class CustomHomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? color;
  final VoidCallback onCardClick;

  const CustomHomeCard({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onCardClick,
    super.key,
  });

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.width(16),
        vertical: SizeConfig.height(8),
      ),
      child: GestureDetector(
        onTap: onCardClick,
        child: Container(
          padding: EdgeInsets.all(SizeConfig.width(10)),
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.borderGrey, width: 1.5),
          ),
          child: _cardContent(context),
        ),
      ),
    );
  }

  //! Widget Methods
  Widget _cardContent(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [_titleAndSubtitle(context), Icon(Icons.chevron_right_rounded)],
  );

  Widget _titleAndSubtitle(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _titleCard(context),
      SizedBox(height: SizeConfig.height(8)),
      _subTitleText(context),
    ],
  );

  Widget _titleCard(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(
      vertical: SizeConfig.height(4),
      horizontal: SizeConfig.width(8),
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: AppColors.borderGrey, width: 1.5),
    ),
    child: Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
    ),
  );

  Widget _subTitleText(BuildContext context) => Text(
    subtitle,
    style: Theme.of(
      context,
    ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
  );
}
