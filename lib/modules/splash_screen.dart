import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth_screens/choose_auth_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver{

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      return Get.off(const ChooseAuthScreen());
    });
  }

  @override
  void deactivate() {
    WidgetsBinding.instance?.addObserver(this);
    super.deactivate();
  }
  @override
  void dispose() {
    WidgetsBinding.instance?.addObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
                child: Image.asset('assets/images/quiz_app_logo.jpg', width: 250, height: double.infinity,)
            ),
          ),

          Column(
            children: const [
              CircularProgressIndicator(
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Version 1.0', style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    letterSpacing: 0.6
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}