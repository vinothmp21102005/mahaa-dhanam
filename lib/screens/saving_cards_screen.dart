import 'package:flutter/material.dart';
import '../core/theme.dart';

class SavingCardsScreen extends StatelessWidget {
  const SavingCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Saving Cards'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Completed Schemes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 16),
          _buildCompletedCard(
            title: 'Mahaa Gold Saver 2025',
            amount: '₹ 55,000',
            date: 'Completed on: 10 Nov 2025',
            cardNumber: '**** **** **** 1234',
          ),
          const SizedBox(height: 16),
          _buildCompletedCard(
            title: 'Diwali Special 2024',
            amount: '₹ 24,000',
            date: 'Completed on: 28 Oct 2024',
            cardNumber: '**** **** **** 5678',
          ),
        ],
      ),
    );
  }

  Widget _buildCompletedCard({
    required String title,
    required String amount,
    required String date,
    required String cardNumber,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.gold, Color(0xFFC5A017)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.verified,
                color: Colors.white,
                size: 28,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'COMPLETED',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            amount,
            style: const TextStyle(
              color: AppColors.darkGreen,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardNumber,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  letterSpacing: 2,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
