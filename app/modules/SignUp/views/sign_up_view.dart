import 'package:eventhub/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.pink[100],
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF8A2387),
                  //  Color(0xFF8A2387),
                Color(0xFFE94057),
                Color(0xFFE94057),
                ],
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                Lottie.asset(
              'assets/animation_ln1bxnov.json',
              height: 150,
              // reverse: true,
              // repeat: true,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 17,),
            Container(
              height:510 ,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text("Hello",style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  
                  Text("Please Create a New Account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,

                  ),),
                  SizedBox(height: 5,),
                  Container(
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        suffixIcon: Icon(Icons.person),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        suffixIcon: Icon(Icons.email_outlined),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        suffixIcon: Icon(Icons.phone_android),

                      ),
                    ),
                  ),
                   SizedBox(height: 10,),
                  Container(
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'PassWord',
                        suffixIcon: Icon(Icons.password),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 310,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirmed Password',
                        suffixIcon: Icon(Icons.password_outlined),

                      ),
                    ),
                  ),
                 SizedBox(height: 20,),
                 GestureDetector(
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.FIRST);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 300,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          colors: [
                             Color(0xFF8A2387),
                    //  Color(0xFF8A2387),
                                  Color(0xFFE94057),
                                  Color(0xFFE94057),
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text("Sign in",
                        style: TextStyle(color: Colors.white,
                        fontSize: 20,fontWeight: FontWeight.w800
                        ),
                        ),
                      ),
                      ),
                  ),
                  ),
                ]),
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
