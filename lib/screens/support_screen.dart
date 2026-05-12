import 'package:flutter/material.dart';
import '../core/theme.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support Desk'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image/Icon
            Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.support_agent,
                  size: 80,
                  color: AppColors.gold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'How can we help you?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGreen,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Fill the form below to raise a complaint or contact our support team.',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.darkGrey,
              ),
            ),
            const SizedBox(height: 32),
            
            // Subject Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Subject',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.darkGreen, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Message Field
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Message',
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.darkGreen, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Complaint submitted successfully!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Submit Complaint',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Call Support Divider
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('OR', style: TextStyle(color: AppColors.darkGrey)),
                ),
                Expanded(child: Divider(color: AppColors.lightGrey, thickness: 1)),
              ],
            ),
            const SizedBox(height: 24),
            
            // Call Support Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.call, color: AppColors.darkGreen),
                label: const Text(
                  'Call Support',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreen,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.darkGreen, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
