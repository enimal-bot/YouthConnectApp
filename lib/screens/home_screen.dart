import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/menu_section.dart';
import '../widgets/welcome_section.dart';
import '../widgets/offers_section.dart';
import '../widgets/opportunities_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              MenuSection(),
              SizedBox(height: 20),
              WelcomeSection(),
              SizedBox(height: 20),
              OffersSection(),
              SizedBox(height: 20),
              OpportunitiesSection(),
            ],
          ),
        ),
      ),
    );
  }
}