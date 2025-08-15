import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/screens/coming_soon_view.dart';

class UpdatesView extends StatelessWidget {
  const UpdatesView({super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: ComingSoonView());
  }

  //! Widget Methods
  PreferredSizeWidget _appBar() =>
      AppBar(title: Text(AppString.kUpdates), titleSpacing: 0);
}
