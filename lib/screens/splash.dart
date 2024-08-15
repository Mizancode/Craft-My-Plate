import "dart:async";

import "package:craft_my_plate/helper/color_spread.dart";
import "package:craft_my_plate/screens/on_boarding.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late Animation<double> _animationScale1;
  late Animation<double> _animationScale2;
  late Animation<Offset> _animationSlide;
  bool flag = false;
  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _controller3 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animationScale1 = Tween<double>(begin: 0.0, end: 1.0).animate(_controller1)
      ..addListener(() {
        setState(() {});
      });
    _animationScale2 =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller2);
    _animationSlide = Tween(begin: const Offset(0, 30), end: Offset.zero)
        .animate(_controller3);
    _controller1.forward();
    _controller2.forward();
    _controller3.forward();
    slide(); // Start the animation
  }

  void slide() {
    Future.delayed(const Duration(milliseconds: 1600), () {
      setState(() {
        flag = true;
      });
    }).then((value) => Future.delayed(const Duration(milliseconds: 1000), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const OnBoarding()));
        }));
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: ColorSpreadPainter(_animationScale1.value),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                  scale: _animationScale2,
                  child: const Image(
                    image: AssetImage('assets/images/Logo.png'),
                  )),
              const SizedBox(
                height: 10,
              ),
              flag
                  ? Column(
                      children: [
                        SlideTransition(
                          position: _animationSlide,
                          child: Text('Craft My Plate',
                              style: GoogleFonts.capriola(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(247, 229, 183, 1))),
                        ),
                        SlideTransition(
                          position: _animationSlide,
                          child: Text('you customise, We eater',
                              style: GoogleFonts.courgette(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(213, 182, 125, 1))),
                        ),
                      ],
                    )
                  : ScaleTransition(
                      scale: _animationScale2,
                      child: Text('Welcome',
                          style: GoogleFonts.capriola(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(247, 229, 183, 1))),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
