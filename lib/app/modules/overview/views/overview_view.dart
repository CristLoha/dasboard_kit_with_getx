import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/overview_controller.dart';

class OverviewView extends GetView<OverviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'OVERVIEW PAGE',
          style: TextStyle(fontSize: 90),
        ),
      ),
    );
  }
}
