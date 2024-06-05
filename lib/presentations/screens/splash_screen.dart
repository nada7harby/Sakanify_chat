import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sakanify/presentations/screens/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
      timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const StartScreen(),));
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Column(
          children: [
            const Image(
              image: AssetImage("assets/images/logo.png"),
              width: 260,
              height: 210,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: const SpinKitCircle(
                size: 70,
                color: Color(0xff1A284E),
              ),
            )
          ],
        ),
      ),
    );
  }
}
