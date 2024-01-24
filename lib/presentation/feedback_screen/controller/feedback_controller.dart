import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/feedback_screen/models/feedback_model.dart';import 'package:flutter/material.dart';/// A controller class for the FeedbackScreen.
///
/// This class manages the state of the FeedbackScreen, including the
/// current feedbackModelObj
class FeedbackController extends GetxController {TextEditingController briefhereController = TextEditingController();

Rx<FeedbackModel> feedbackModelObj = FeedbackModel().obs;

@override void onClose() { super.onClose(); briefhereController.dispose(); } 
 }
