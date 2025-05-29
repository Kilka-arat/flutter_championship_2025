import 'package:flutter/material.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF0F3460), Color(0xFF533483)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 800),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: value,
                    child: const Icon(
                      Icons.energy_savings_leaf,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            // ... остальной код
          ],
        ),
      ),
    );
  }
}
