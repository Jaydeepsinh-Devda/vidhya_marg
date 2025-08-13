import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/ui_components/custom_pdf_card.dart';

class CustomSubjectCard extends StatelessWidget {
  final Color color;
  const CustomSubjectCard({required this.color, super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return _content(context);
  }

  //! Widget Methods
  Widget _content(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      _subjectHeading(context),
      SizedBox(height: SizeConfig.height(16)),
      SizedBox(height: SizeConfig.height(140), child: _pdfCard()),
    ],
  );

  Widget _subjectHeading(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(16)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_headingTitleAndLabel(context), _viewAllText(context)],
    ),
  );

  Widget _headingTitleAndLabel(BuildContext context) => Row(
    children: [
      _subjectLabel(context),
      SizedBox(width: SizeConfig.width(12)),
      _titleAndSubtitle(context),
    ],
  );

  Widget _subjectLabel(BuildContext context) => CircleAvatar(
    radius: 28,
    backgroundColor: color,
    child: Text(
      "H",
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );

  Widget _titleAndSubtitle(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [_title(context), _subtitle(context)],
  );

  Widget _title(BuildContext context) => Text(
    // value will fetch from API
    "ઇતિહાસ (History)",
    style: Theme.of(
      context,
    ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
  );

  Widget _subtitle(BuildContext context) => Text(
    // value will fetch from API
    "3 PDFs",
    style: Theme.of(context).textTheme.bodySmall?.copyWith(
      fontWeight: FontWeight.bold,
      color: AppColors.grey,
    ),
  );

  Widget _viewAllText(BuildContext context) => Row(
    children: [
      Text(
        AppString.kViewAll,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      Icon(Icons.chevron_right_rounded, color: color),
    ],
  );

  Widget _pdfCard() => ListView.separated(
    separatorBuilder: (context, index) => SizedBox(width: SizeConfig.width(0)),
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (context, index) => Padding(
      padding: EdgeInsets.only(left: SizeConfig.width(16)),
      child: SizedBox(width: SizeConfig.width(112), child: CustomPdfCard()),
    ),
  );
}
