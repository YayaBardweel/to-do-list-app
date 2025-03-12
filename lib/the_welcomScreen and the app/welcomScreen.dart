import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.orange, // Consistent color usage
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Lottie Animation Container
              Container(
                height: screenHeight * 0.4, // Responsive height
                width: screenWidth * 0.9, // Responsive width
                alignment: Alignment.center, // Center the animation
                child: Lottie.asset(
                  "assetsLottie/Animation - 1741690745734.json",
                  fit: BoxFit.contain, // Use contain to keep aspect ratio
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              // Welcome Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Welcome to 'Let's Do It' App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Choose a color that contrasts well
                  ),
                ),
              ),
              // App Description Text
              SizedBox(height: screenHeight * 0.02), // Consistent spacing
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Here you can add and manage your to-do lists.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70, // Softer color for description
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              // "Let's Start" Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, 'todolist');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  ),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
