import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eventhub/app/modules/First/views/first_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF8A2387),
            Color(0xFFE94057),
            Color(0xFFE94057),
          ],
        ),
      ),
      child: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animation_ln4buhv1.json',
                height: 400,
                reverse: true,
                repeat: true,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                "Colors",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AutofillHints.addressCity',
                  color: Colors.white, // Set the text color
                ),
              ),
            ],
          ),
        ),
        nextScreen: const FirstView(),
        duration: 7000,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.topToBottom,
        backgroundColor: Colors.transparent,
        // Add the following line to center the splash screen content.
        splashIconSize: double.infinity,
      ),
    );
  }
}
