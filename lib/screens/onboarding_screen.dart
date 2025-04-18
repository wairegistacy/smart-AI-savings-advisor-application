import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final List<Map<String, String>> onboardingData = [
    {
      "title": "Smart AI Advisor",
      "text": "Get personalized savings recommendations powered by AI.",
      "image": "assets/images/onboarding1.png"
    },
    {
      "title": "Track Your Goals",
      "text": "Set savings goals and watch your progress grow.",
      "image": "assets/images/onboarding2.png"
    },
    {
      "title": "Save Effortlessly",
      "text": "Automate your savings decisions with ease.",
      "image": "assets/images/onboarding3.png"
    },
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/auth');
          },
          child: Text('Continue to Login/Signup'),
        ),
      ),
    );
  }
}
