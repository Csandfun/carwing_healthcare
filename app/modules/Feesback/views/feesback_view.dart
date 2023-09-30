import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feesback_controller.dart';

class FeesbackView extends GetView<FeesbackController> {
  const FeesbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeesbackView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FeesbackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
