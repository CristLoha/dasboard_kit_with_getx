import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tickets_controller.dart';

class TicketsView extends GetView<TicketsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TicketsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
