import 'package:assignment1/models/job_list_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EditJobViewModel extends BaseViewModel {
  TextEditingController positionController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  JobListItem job = JobListItem();

  void loadJobFromModel() {
    positionController.text = job.position;
    descriptionController.text = job.description;
  }

  disposeControllers() {
    positionController.dispose();
    descriptionController.dispose();
  }
}
