import 'package:flutter/material.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({Key? key}) : super(key: key); // Исправлено: добавлен ключ

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFE94560), Color(0xFF533483)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Анимированное изображение (пример с иконкой)
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 800),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: value,
                    child: const Icon(
                      Icons.local_florist,
                      size: 180,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),

            const SizedBox(
              height: 40,
            ), // Исправлено: правильное написание SizedBox
            // Анимированный текст
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 800),
              key: const Duration(milliseconds: 200),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 30 * (1 - value)),
                    child: const Text(
                      "В вашей комнате много\nкрасивых и привлекательных\nрастений", // Исправлены кавычки и переносы
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                  ),
                );
              },
            ),

            const Spacer(), // Исправлено: заменено на стандартный Spacer
            // Номер экрана
            const Text(
              'Onboard-3',
              style: TextStyle(fontSize: 14, color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
