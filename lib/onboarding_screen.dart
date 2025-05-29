import 'package:flutter/material.dart';
import 'onboard1.dart';
import 'onboard2.dart';
import 'onboard3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            children: const [Onboard1(), Onboard2(), Onboard3()],
          ),
          // ... индикатор и кнопки
        ],
      ),
    );
  }
}
