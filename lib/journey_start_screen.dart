import 'package:flutter/material.dart';

class JourneyStartScreen extends StatelessWidget {
  const JourneyStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Фоновое изображение (можно заменить на свое)
          Positioned.fill(
            child: Image.asset(
              'assets/images/fashion_bg.jpg', // Замените на ваш файл
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),

          // Основное содержимое
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(), // Отступ сверху
                // Заголовок "Начнем путешествие"
                const Text(
                  'Начнем путешествие',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 24),

                // Описание коллекции
                const Text(
                  'Умная, великолепная и модная коллекция\nИзучите сейчас.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 40),

                // Кнопка "Далее"
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Навигация на следующий экран
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Далее',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Текст внизу экрана
                const Center(
                  child: Text(
                    'Sign up to comment, edit, inspect and monitor',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
