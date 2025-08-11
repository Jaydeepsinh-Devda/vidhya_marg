import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/core/utils/size_config.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.kProfile)),
      // body: _scaffoldBody(context),
    );
  }

  //! Widget Methods
  
}