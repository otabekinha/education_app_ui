import 'package:education_app_ui/pages/home.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://img.freepik.com/free-vector/writers-block-concept-illustration_114360-8149.jpg?t=st=1745157491~exp=1745161091~hmac=85b4a22dbc8971ba8e0c9b5caa1e116abed4a15ecb62cb37b70739cd3c78911b&w=1380',
          ),
          const SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            'The only study app you\'ll ever need',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(
            textAlign: TextAlign.center,
            'Upload class study materials, create electronic flashcards to study',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade900,
              foregroundColor: Colors.white,
              minimumSize: Size(160, 60),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text(
              'Let\'s start',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
