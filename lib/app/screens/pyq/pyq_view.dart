import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidhya_marg/app/core/routes/app_routes.dart';
import 'package:vidhya_marg/app/core/utils/app_colors.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';
import 'package:vidhya_marg/app/screens/pyq/pyq_controller.dart';

class PyqView extends StatelessWidget {
  PyqView({super.key});

  final PyqController _controller = Get.find<PyqController>();

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(appBar: _appBar(), body: _yearListView());
  }

  //! Widget Methods
  PreferredSizeWidget _appBar() =>
      AppBar(title: Text(AppString.kPYQs), titleSpacing: 0);

  Widget _yearListView() => ListView.separated(
    separatorBuilder: (context, index) =>
        SizedBox(height: SizeConfig.height(12)),
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.width(16),
      vertical: SizeConfig.height(16),
    ),
    itemCount: _controller.yearList.length,
    itemBuilder: (context, index) => GestureDetector(
      onTap: () => _onTapYearListCard(index),
      child: _yearListCard(context, _controller.yearList[index]),
    ),
  );

  Widget _yearListCard(BuildContext context, String year) => ColoredBox(
    color: Colors.white,
    child: Column(children: [_yearAndChevronIcon(context, year), _divider()]),
  );

  Widget _divider() => Divider(color: AppColors.grey);

  Widget _yearAndChevronIcon(BuildContext context, String year) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [_yearText(context, year), _chevronIcon()],
  );

  Widget _yearText(BuildContext context, String year) => Text(
    year,
    style: Theme.of(
      context,
    ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
  );

  Widget _chevronIcon() => Icon(Icons.chevron_right_rounded);

  //! Function
  void _onTapYearListCard(int index) {
    Get.toNamed(
      AppRoutes.pyqDetails,
      arguments: {AppString.kYearArguments: _controller.yearList[index]},
    );
  }
}
