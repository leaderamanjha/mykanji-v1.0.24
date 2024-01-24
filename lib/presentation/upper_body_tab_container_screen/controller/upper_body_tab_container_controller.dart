import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/upper_body_tab_container_screen/models/upper_body_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the UpperBodyTabContainerScreen.
///
/// This class manages the state of the UpperBodyTabContainerScreen, including the
/// current upperBodyTabContainerModelObj
class UpperBodyTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<UpperBodyTabContainerModel> upperBodyTabContainerModelObj = UpperBodyTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
