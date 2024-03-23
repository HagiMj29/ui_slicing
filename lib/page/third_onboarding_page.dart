import 'package:flutter/material.dart';
import 'package:ui_slicing/page/home_page.dart';
import 'package:ui_slicing/page/onboarding_screen.dart';

import '../widgets/theme.dart';

class ThirdOnBoardingPage extends StatelessWidget {
  const ThirdOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/img_2.png', height: 100, fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_4.png',width: 250,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Image.asset('images/img_7.png', width: 350, ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'Find Trusted Doctors',
                  textAlign: TextAlign.center,
                  style: boldText.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Contrary to popular belief, Lorem Ipsum is not \nsimply random text. It has roots in a piece of it \nover 2000 years old.',
                textAlign: TextAlign.center,
                style: regularText.copyWith(fontSize: 12),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 98),
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 7, backgroundColor: colorTheme,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
                    },
                    child: Text(
                      'Get Started',
                      style: semiBold,
                    )),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {

                },
                child: Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  style: regularText.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
