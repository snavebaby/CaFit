import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewmodels/instructions_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart' as prefix0;
import 'package:provider_architecture/ui/shared/text_styles.dart';
import 'package:provider_architecture/ui/views/base_view.dart';

class InstructionsView extends StatelessWidget {
  final String categoryName;
  InstructionsView(this.categoryName);

  @override
  Widget build(BuildContext context) {
    print(categoryName);
    return BaseView<InstructionsModel>(
      builder: (context, model, child) => MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: WillPopScope(
            onWillPop: () {
              model.navigateBack();
              return new Future(() => false);
            },
            child: Scaffold(
              appBar: AppBar(
                leading: BackButton(),
                title: Text(
                  'Instructions',
                  style: appBarTitleStyle,
                ),
                backgroundColor: prefix0.primaryColor,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                      text: "Arm",
                    ),
                    Tab(
                      text: "Legs",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}