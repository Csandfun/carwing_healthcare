import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/organizer_page_controller.dart';

class OrganizerPageView extends GetView<OrganizerPageController> {
  const OrganizerPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrganizerPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OrganizerPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
