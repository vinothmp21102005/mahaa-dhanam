import 'package:flutter/material.dart';
import '../core/theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              // Logo Placeholder
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.gold, width: 3),
                ),
                child: const Icon(
                  Icons.account_balance_wallet,
                  size: 80,
                  color: AppColors.darkGreen,
                ),
              ),
              const SizedBox(height: 40),
              // Welcome Text
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.darkGrey,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Mahaa Dhanam',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkGreen,
                ),
              ),
              const SizedBox(height: 16),
              // Tagline
              const Text(
                'Save for Better Future',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.gold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Spacer(),
              // Login Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.darkGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Signup note
              const Text(
                'Signup coming in next version',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.darkGrey,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
