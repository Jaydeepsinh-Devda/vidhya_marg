import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/ui_components/custom_pdf_card.dart';

class PyqDetailsView extends StatelessWidget {
  const PyqDetailsView({super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    // Getting the arguments
    final args = Get.arguments as Map<String, dynamic>;
    var year = args[AppString.kYearArguments] as String? ?? "";

    return Scaffold(
      appBar: _appBar(year),
      body: SafeArea(child: _yearPyqList()),
    );
  }

  //! Widget Methods
  PreferredSizeWidget _appBar(String year) =>
      AppBar(title: Text(year), titleSpacing: 0);

  Widget _yearPyqList() => GridView.builder(
    padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(16)),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: 10,
    itemBuilder: (context, index) => SizedBox(
      width: SizeConfig.width(112),
      height: SizeConfig.width(140),
      child: CustomPdfCard(isPyq: true),
    ),
  );
}
