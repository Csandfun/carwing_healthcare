import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_events_controller.dart';

class MyEventsView extends GetView<MyEventsController> {
  const MyEventsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyEventsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyEventsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
