import 'package:flutter/material.dart';
import 'category_card.dart';
import 'package:matule/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Раздел Категории
              const Text(
                'Категории',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(title: 'Все', isActive: true),
                    const SizedBox(width: 10),
                    CategoryCard(title: 'Outdoor'),
                    const SizedBox(width: 10),
                    CategoryCard(title: 'Tennis'),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Раздел Популярное
              const Text(
                'Популярное',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildPopularSection(),
              const SizedBox(height: 30),

              // Раздел Вести
              const Text(
                'Вести',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildNewsSection(),
              const SizedBox(height: 30),

              // Раздел КАТЕГОРИИ
              _buildCategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularSection() {
    return Column(
      children: [
        ProductCard(
          title: 'Nike Air Max',
          price: 'P752.00',
          tag: 'BEST SELLER',
        ),
        const SizedBox(height: 16),
        const Row(
          children: [
            Expanded(
              child: BannerCard(
                title: 'AKLIUM',
                subtitle: 'Summer Sale',
                discount: '15% OFF',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildNewsSection() {
    return ProductCard(
      title: 'Nike Air Max',
      price: 'P752.00',
      tag: 'BEST SELLER',
      additionalInfo: 'Bee',
    );
  }

  Widget _buildCategoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'КАТЕГОРИИ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          'Sign up to comment, edit, inspect and more.',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Sign up'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
