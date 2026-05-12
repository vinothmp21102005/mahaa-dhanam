import 'package:flutter/material.dart';
import '../core/theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDarkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Preferences',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGrey,
              ),
            ),
          ),
          SwitchListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Enable dark theme'),
            secondary: const Icon(Icons.dark_mode, color: AppColors.darkGreen),
            value: _isDarkMode,
            activeColor: AppColors.gold,
            onChanged: (bool value) {
              setState(() {
                _isDarkMode = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Receive alerts and updates'),
            secondary: const Icon(Icons.notifications_active, color: AppColors.darkGreen),
            value: _notificationsEnabled,
            activeColor: AppColors.gold,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGrey,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lock, color: AppColors.darkGreen),
            title: const Text('Change Password'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Navigate to Change Password')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'About',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.darkGrey,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info, color: AppColors.darkGreen),
            title: const Text('About Mahaa Dhanam'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Mahaa Dhanam',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(Icons.account_balance, size: 40, color: AppColors.gold),
                applicationLegalese: '© 2026 Mahaa Dhanam Inc.',
              );
            },
          ),
        ],
      ),
    );
  }
}
