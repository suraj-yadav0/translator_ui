import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:translator_ui/helper/global.dart';
import 'package:translator_ui/screens/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 66, 63, 63),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const Spacer(),
          Container(
            child: Lottie.asset(
              'assets/lottie/onboard.json',
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), 
              elevation: 1,
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {
              Get.off(() => const HomeScreen());
            }, child: const Text('Next', style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),)),
            const Spacer(flex: 2,)
        ],
      ),
    );
  }
}
