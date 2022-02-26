import 'package:assignment1/ui/shared/styles.dart';
import 'package:assignment1/ui/views/login/login_view.dart';
import 'package:flutter/material.dart';
import '../../dumb_widgets/job_info_layout.dart';

class AddJobView extends StatelessWidget {
  const AddJobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: appPrimaryColor,
        body: JobInfoLayout(
          screenTitle: 'Add New Job',
          positionHintText: 'Enter position name',
          descriptionHintText: 'Describe Requirement...',
          onBackPress: () {
            Navigator.pop(context);
          },
          mainButtonTitle: 'Submit Job',
          onSubmit: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginView()));
          },
        ),
      ),
    );
  }
}
