import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/gen/assets.gen.dart';

class CustomPdfCard extends StatelessWidget {
  final bool isPyq;

  const CustomPdfCard({this.isPyq = false, super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderGrey),
        color: AppColors.navBarBackgroundColor,
      ),
      child: _pdfLogoAndName(context),
    );
  }

  //! Widget Methods
  Widget _pdfLogoAndName(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.width(12),
      vertical: SizeConfig.height(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _pdfLogo(),
        SizedBox(height: SizeConfig.height(12)),
        _pdfName(context),
      ],
    ),
  );

  Widget _pdfLogo() => SvgPicture.asset(
    Assets.pdf,
    height: isPyq ? SizeConfig.height(40) : null,
  );

  Widget _pdfName(BuildContext context) => Text(
    // vale will come from API
    "મધ્યકાલીન ઇતિહાસ (Medieval History)",
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: isPyq ? 16 : null,
    ),
  );
}
