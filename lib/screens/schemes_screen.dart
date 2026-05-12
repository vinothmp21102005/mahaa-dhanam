import 'package:flutter/material.dart';
import '../core/theme.dart';

class SchemesScreen extends StatelessWidget {
  const SchemesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diwali Savings'),
        automaticallyImplyLeading: false, // hidden if accessed from bottom nav
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Active Schemes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,
            ),
          ),
          const SizedBox(height: 16),
          _buildSchemeCard(
            title: 'Gold Coin Plan',
            monthlyAmount: '₹ 5,000',
            duration: '11 Months',
            percentage: 0.45, // 45%
            icon: Icons.monetization_on,
          ),
          const SizedBox(height: 16),
          _buildSchemeCard(
            title: 'Festive Special',
            monthlyAmount: '₹ 2,000',
            duration: '12 Months',
            percentage: 0.75, // 75%
            icon: Icons.card_giftcard,
          ),
          const SizedBox(height: 16),
          _buildSchemeCard(
            title: 'Family Secure Saver',
            monthlyAmount: '₹ 10,000',
            duration: '24 Months',
            percentage: 0.15, // 15%
            icon: Icons.family_restroom,
          ),
          const SizedBox(height: 16),
          _buildSchemeCard(
            title: 'Silver Accumulator',
            monthlyAmount: '₹ 1,500',
            duration: '11 Months',
            percentage: 0.90, // 90%
            icon: Icons.shield,
          ),
        ],
      ),
    );
  }

  Widget _buildSchemeCard({
    required String title,
    required String monthlyAmount,
    required String duration,
    required double percentage,
    required IconData icon,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.gold.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: AppColors.gold, size: 28),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkGreen,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$duration • $monthlyAmount/mo',
                        style: const TextStyle(
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Completion',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey,
                  ),
                ),
                Text(
                  '${(percentage * 100).toInt()}%',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreen,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: percentage,
              backgroundColor: AppColors.lightGrey,
              color: AppColors.gold,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      ),
    );
  }
}
