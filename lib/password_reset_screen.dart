import 'package:flutter/material.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  _PasswordResetScreenState createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  String username = '';
  String email = '';
  String newPassword = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Reset'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Username'),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'New Password'),
              onChanged: (value) {
                setState(() {
                  newPassword = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Confirm Password'),
              onChanged: (value) {
                setState(() {
                  confirmPassword = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasswordResetScreen(),
                  ),
                );

                // Handle password reset logic
                resetPassword();
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }

  void resetPassword() {
    // Implement your password reset logic here
    // Send a request to the server with username, email, new password, etc.
    // Display success or error message to the user
  }
}
