import 'package:flutter/material.dart';
import 'package:vidhya_marg/app/core/utils/app_string.dart';
import 'package:vidhya_marg/app/screens/coming_soon_view.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  //! Build Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: ComingSoonView());
  }

  //! Widget Methods
  PreferredSizeWidget _appBar() =>
      AppBar(title: Text(AppString.kQuiz), titleSpacing: 0);
}
