import 'package:flutter/material.dart';
import 'phone_number_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secondary Numbers UI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF161B1D),
      ),
      home: const SecondaryNumbersScreen(),
    );
  }
}

class SecondaryNumbersScreen extends StatelessWidget {
  const SecondaryNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Header Text
              const Text(
                'Yeatasim Billah',
                style: TextStyle(
                  color: Color(0xFF9EAAAF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 20),

              // First Card - Updated with your number
              const PhoneNumberCard(
                phoneNumber: '01571339897',
                label: 'Yeatasim Billah',
                status: 'Added just now',
              ),
              const SizedBox(height: 16),

              // Second Card
              const PhoneNumberCard(
                phoneNumber: '22-CSE-052',
                label: 'Roll Number',
                status: 'Verified',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
