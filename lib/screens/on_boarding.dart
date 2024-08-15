import "package:craft_my_plate/model/onboard.dart";
import "package:craft_my_plate/screens/auth.dart";
import "package:craft_my_plate/widget/custom_btn.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    final control = PageController();
    final list = [
      OnBoard(
          title: 'Choose & Customize!',
          subTitle:
              'Select a platter, choose and customize menu items and craft a personalized menu for event',
          image: 'assets/svg/OnBoarding_1.svg'),
      OnBoard(
          title: 'Order More, Save More!',
          subTitle:
              'Experience culinary artistry like never before with our innovative and exquisite cuisine creations',
          image: 'assets/svg/OnBoarding_2.svg'),
      OnBoard(
          title: 'Personal Order Executive',
          subTitle:
              'Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.',
          image: 'assets/svg/OnBoarding_3.svg'),
    ];
    final lastIdx = list.length - 1;
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Auth()));
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.lexend(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(99, 24, 175, 1)),
                  textAlign: TextAlign.center,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: SafeArea(
            child: PageView.builder(
                controller: control,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                    list[index].image,
                  ),
                      Text(
                        list[index].title,
                        style: GoogleFonts.lexend(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(3, 3, 3, 1)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: mq.height * 0.01,
                      ),
                      Text(
                        list[index].subTitle,
                        style: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromRGBO(123, 123, 123, 1)),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      Wrap(
                          spacing: 15,
                          children: List.generate(
                              list.length,
                              (i) => Container(
                                    width: i == index ? 25 : 10,
                                    height: 12,
                                    decoration: BoxDecoration(
                                        color: i == index
                                            ? Colors.deepPurple
                                            : Colors.grey,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                  ))),
                      const Spacer(),
                      CustomBtn(
                        onTap: () {
                          if (index == lastIdx) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Auth()));
                          } else {
                            control.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease);
                          }
                        },
                        last: index == lastIdx ? true : false,
                      ),
                      const Spacer(
                        flex: 2,
                      )
                    ],
                  );
                }),
          ),
        ));
  }
}
