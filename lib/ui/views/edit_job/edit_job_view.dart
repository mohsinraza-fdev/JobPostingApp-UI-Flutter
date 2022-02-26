import 'package:assignment1/ui/shared/styles.dart';
import 'package:assignment1/ui/views/edit_job/edit_job_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../dumb_widgets/job_info_layout.dart';

class EditJobView extends StatelessWidget {
  const EditJobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditJobViewModel>.nonReactive(
      viewModelBuilder: () => EditJobViewModel(),
      onModelReady: (viewModel) => viewModel.loadJobFromModel(),
      onDispose: (viewModel) => viewModel.disposeControllers(),
      builder: (context, model, child) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: appPrimaryColor,
          body: JobInfoLayout(
            screenTitle: 'Edit Job',
            positionHintText: 'Enter position name',
            positionTextController: model.positionController,
            descriptionHintText: 'Describe Requirement...',
            descriptionTextController: model.descriptionController,
            onBackPress: () {
              Navigator.pop(context);
            },
            mainButtonTitle: 'Update Job',
            onSubmit: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
