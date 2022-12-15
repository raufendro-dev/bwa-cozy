import 'package:animate_do/animate_do.dart';
import 'package:bwa_cozy/pages/homepagescreen.dart';
import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:bwa_cozy/theme/styleText.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDown(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50, left: 30),
                      child: Image.asset(
                          height: 50, width: 50, 'assets/images/logo/logo.png'),
                    ),
                  ),
                  FadeInLeft(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        "Find Cozy House\nto Stay and Happy",
                        style: mediumText.copyWith(fontSize: 24, color: hitam),
                      ),
                    ),
                  ),
                  FadeInLeft(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        "Stop membuang waktu\npada tempat yang tidak habitable",
                        style: lightText.copyWith(fontSize: 16, color: abu),
                      ),
                    ),
                  ),
                  FadeInLeft(
                      child: Padding(
                    padding: EdgeInsets.only(top: 40, left: 30),
                    child: Container(
                      height: 50,
                      width: 210,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ungu,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: Homepagescreen()));
                        },
                        child: Text(
                          "Explore Now",
                          style:
                              mediumText.copyWith(fontSize: 18, color: putih),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              FadeInUp(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/splash/splash_image.png'),
              ))
            ],
          )),
    );
  }
}
