import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final String name;
  const Home({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, $name!',
                  style: GoogleFonts.lexend(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(99, 24, 175, 1)),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Current Location',
                  style: GoogleFonts.lexend(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromRGBO(123, 123, 123, 1)),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    const Icon(CupertinoIcons.placemark,
                        color: Color.fromRGBO(99, 24, 175, 1)),
                    Text(
                      'Hyderabad',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.grey,
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Icon(
                          Icons.play_circle_outline_outlined,
                          color: Color.fromRGBO(99, 24, 175, 1),
                        ),
                        Text(
                          'How it Works!',
                          style: GoogleFonts.lexend(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 140,
                        width: 320,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(121, 21, 222, 1),
                                  Color.fromRGBO(38, 12, 64, 0.6),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 14,
                              left: 19,
                              child: Text(
                                'Enjoy your first\norder, the taste of\nour delicious food!',
                                style: GoogleFonts.lexend(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              top: 90,
                              left: 41,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5,
                                        color: const Color.fromRGBO(
                                            123, 123, 123, 1),
                                        style: BorderStyle.solid)),
                                child: Text(
                                  'FIRSTPLATE01',
                                  style: GoogleFonts.lexend(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          246, 215, 152, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 6.0,
                              left: 175,
                              child: SvgPicture.asset(
                                'assets/svg/Chef.svg',
                                height: 130,
                                width: 60,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 70,
                              child: SvgPicture.asset(
                                'assets/svg/Yum.svg',
                                height: 50,
                                width: 30,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Start Crafting',
                      style: GoogleFonts.lexend(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(36, 38, 40, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                        child: Divider(
                      color: Color.fromRGBO(244, 245, 245, 1),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 170,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 236, 202),
                            borderRadius: BorderRadius.circular(18)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 25,
                              left: 19,
                              child: Text(
                                'Delivery Box',
                                style: GoogleFonts.lexend(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(36, 38, 40, 1)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 19,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      color: Color.fromRGBO(147, 90, 16, 1),
                                    ),
                                    Text(
                                      'Min 10 - Max 120',
                                      style: GoogleFonts.lexend(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              147, 90, 16, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )),
                            Positioned(
                              top: 90,
                              left: 41,
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(221, 142, 24, 1),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'See All',
                                        style: GoogleFonts.lexend(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        size: 15,
                                      )
                                    ],
                                  )),
                            ),
                            const Positioned(
                                left: 98,
                                top: 3,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Dishes.png'))),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 240,
                            width: 155,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(231, 215, 244, 1),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 25,
                                  left: 19,
                                  child: Text(
                                    'Meal Boxes',
                                    style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            36, 38, 40, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                    top: 50,
                                    left: 19,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          color: Color.fromRGBO(99, 24, 175, 1),
                                        ),
                                        Text(
                                          'Min 10 Guests',
                                          style: GoogleFonts.lexend(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  99, 24, 175, 1)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )),
                                Positioned(
                                  top: 75,
                                  right: 10,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(99, 24, 175, 1),
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                    left: -40,
                                    bottom: -80,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/Roti.png'))),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 240,
                            width: 155,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(251, 218, 234, 1),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 25,
                                  left: 19,
                                  child: Text(
                                    'Catering',
                                    style: GoogleFonts.lexend(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            36, 38, 40, 1)),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Positioned(
                                    top: 50,
                                    left: 19,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.person,
                                          color: Color.fromRGBO(194, 0, 94, 1),
                                        ),
                                        Text(
                                          'Min 120 Guests',
                                          style: GoogleFonts.lexend(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  194, 0, 94, 1)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )),
                                Positioned(
                                    top: 75,
                                    right: 10,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          color: Color.fromRGBO(194, 0, 94, 1),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    )),
                                const Positioned(
                                    left: -30,
                                    bottom: -50,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/Buffer.png'))),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Choose Your Platter',
                      style: GoogleFonts.lexend(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(36, 38, 40, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Expanded(
                        child: Divider(
                      color: Color.fromRGBO(244, 245, 245, 1),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Delivery Box',
                      style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(99, 24, 175, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '(',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Min 10 - Max 50',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(113, 113, 113, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      ')',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const Spacer(),
                    Text(
                      'More',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(72, 76, 81, 1)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Text(
                  'Best for small gatherings and house-parties',
                  style: GoogleFonts.lexend(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromRGBO(147, 153, 159, 1)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 300,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/Thali.png'),
                                ),
                                Positioned(
                                    top: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color.fromRGBO(151, 101, 202, 1),
                                            Color.fromRGBO(125, 62, 188, 1),
                                            Color.fromRGBO(125, 62, 188, 1),
                                            Color.fromRGBO(99, 24, 175, 1)
                                          ]),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15))),
                                      child: Text(
                                        'Popular',
                                        style: GoogleFonts.lexend(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              37, 123, 62, 1))),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(37, 123, 62, 1),
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Punjabi Special Menu',
                                  style: GoogleFonts.lexend(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(36, 38, 40, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const Divider(
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '6 Categories & 9 Items',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(99, 24, 175, 1)),
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                                Text(
                                  'See all',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          96, 102, 108, 1)),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const Divider(
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: const Color.fromRGBO(
                                            123, 123, 123, 1),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Starts at ',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    96, 102, 108, 1))),
                                        TextSpan(
                                            text: '₹299',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    36, 38, 40, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      size: 15,
                                      color: Color.fromRGBO(102, 102, 102, 1),
                                    ),
                                    Text(
                                      ' 10-600',
                                      style: GoogleFonts.lexend(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: const Color.fromRGBO(
                                              102, 102, 102, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.star_border_rounded,
                                  color: Color.fromRGBO(237, 219, 173, 1),
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: const Color.fromRGBO(
                                            123, 123, 123, 1),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: '₹219 ',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 24, 175, 1),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: '/ Person ',
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(71, 71, 71, 1),
                                            )),
                                      ]),
                                ),
                                const Icon(
                                  Icons.arrow_downward,
                                  size: 20,
                                  color: Color.fromRGBO(25, 135, 84, 1),
                                ),
                                Text(
                                  ' 20%',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(25, 135, 84, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  style: GoogleFonts.lexend(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w200,
                                    color:
                                        const Color.fromRGBO(123, 123, 123, 1),
                                  ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: '    with Dynamic Price for ',
                                        style: TextStyle(
                                          color: Color.fromRGBO(99, 24, 175, 1),
                                        )),
                                    TextSpan(
                                        text: '100 Guests',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        )),
                                  ]),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Meal Box',
                      style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(99, 24, 175, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '(',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Min 10',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(113, 113, 113, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      ')',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const Spacer(),
                    Text(
                      'More',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(72, 76, 81, 1)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Text(
                  'Individually packed meal boxes of happiness!',
                  style: GoogleFonts.lexend(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromRGBO(147, 153, 159, 1)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 150,
                            width: 180,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Color.fromRGBO(251, 218, 234, 1),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Rice.png'),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 75,
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(121, 21, 222, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(15))),
                                    child: Text(
                                      '3 Items Box',
                                      style: GoogleFonts.lexend(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 150,
                            width: 180,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Color.fromRGBO(231, 215, 244, 1),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Roti.png'),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 75,
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(121, 21, 222, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(15))),
                                    child: Text(
                                      '5 Items Box',
                                      style: GoogleFonts.lexend(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Catering Menus',
                      style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(99, 24, 175, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      '(',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Min 200',
                      style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(113, 113, 113, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      ')',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  'Best for weddings, Corporate Events, Birthdays etc',
                  style: GoogleFonts.lexend(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromRGBO(147, 153, 159, 1)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 300,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(234, 236, 236, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                const Image(
                                  image: AssetImage('assets/images/Thali.png'),
                                ),
                                Positioned(
                                    top: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color.fromRGBO(151, 101, 202, 1),
                                            Color.fromRGBO(125, 62, 188, 1),
                                            Color.fromRGBO(125, 62, 188, 1),
                                            Color.fromRGBO(99, 24, 175, 1)
                                          ]),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15))),
                                      child: Text(
                                        'Popular',
                                        style: GoogleFonts.lexend(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              37, 123, 62, 1))),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromRGBO(37, 123, 62, 1),
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Punjabi Special Menu',
                                  style: GoogleFonts.lexend(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(36, 38, 40, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            const Divider(
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '12 Categories & 40 Items',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(99, 24, 175, 1)),
                                  textAlign: TextAlign.center,
                                ),
                                const Spacer(),
                                Text(
                                  'See all',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          96, 102, 108, 1)),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const Divider(
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: const Color.fromRGBO(
                                            123, 123, 123, 1),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Starts at ',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    96, 102, 108, 1))),
                                        TextSpan(
                                            text: '₹299',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    36, 38, 40, 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      size: 15,
                                      color: Color.fromRGBO(102, 102, 102, 1),
                                    ),
                                    Text(
                                      ' 10-600',
                                      style: GoogleFonts.lexend(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: const Color.fromRGBO(
                                              102, 102, 102, 1)),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.star_border_rounded,
                                  color: Color.fromRGBO(237, 219, 173, 1),
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      style: GoogleFonts.lexend(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: const Color.fromRGBO(
                                            123, 123, 123, 1),
                                      ),
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: '₹219 ',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    99, 24, 175, 1),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: '/ Person ',
                                            style: TextStyle(
                                              color:
                                                  Color.fromRGBO(71, 71, 71, 1),
                                            )),
                                      ]),
                                ),
                                const Icon(
                                  Icons.arrow_downward,
                                  size: 20,
                                  color: Color.fromRGBO(25, 135, 84, 1),
                                ),
                                Text(
                                  ' 20%',
                                  style: GoogleFonts.lexend(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(25, 135, 84, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  style: GoogleFonts.lexend(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w200,
                                    color:
                                        const Color.fromRGBO(123, 123, 123, 1),
                                  ),
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: '    with Dynamic Price for ',
                                        style: TextStyle(
                                          color: Color.fromRGBO(99, 24, 175, 1),
                                        )),
                                    TextSpan(
                                        text: '100 Guests',
                                        style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        )),
                                  ]),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(228, 230, 231, 1),
                      size: 20,
                    ),
                    Text(
                      'You Customize, We Cater!',
                      style: GoogleFonts.lexend(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(228, 230, 231, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromRGBO(228, 230, 231, 1), size: 20),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        alignment: Alignment.center,
        height: 60,
        width: 220,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                Icon(Icons.person),
                Text('Profile'),
              ],
            ),
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple,
                  image: DecorationImage(
                      image: AssetImage('assets/images/Logo.png'), scale: 3)),
            ),
            const Column(
              children: [
                Icon(Icons.fastfood),
                Text('Order'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
