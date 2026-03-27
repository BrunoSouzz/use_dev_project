import 'package:flutter/material.dart';
import '../sections/navbar.dart';
import '../sections/hero_section.dart';
import '../sections/categories_section.dart';
import '../sections/footer_section.dart';
import '../widgets/search_bar_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            SearchBarCustom(),
            HeroSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}