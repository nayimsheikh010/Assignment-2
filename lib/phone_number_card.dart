import 'package:flutter/material.dart';

class PhoneNumberCard extends StatelessWidget {
  final String phoneNumber;
  final String label;
  final String status;

  const PhoneNumberCard({
    super.key,
    required this.phoneNumber,
    required this.label,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
        color: const Color(0xFF1F2528), // Dark card background
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          // Creates the soft white glowing border effect around the card
          BoxShadow(
            color: Colors.white.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
          // Deep drop shadow for depth
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Circular Phone Icon
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: Color(0xFF2B3236), // Slightly lighter circle background
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.phone,
              color: Color(0xFF9EAAAF), // Icon color
              size: 24,
            ),
          ),
          const SizedBox(width: 16),

          // Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phoneNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '$label • $status',
                  style: const TextStyle(
                    color: Color(0xFF88959A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          // Action Buttons (Edit & Delete)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  // TODO: Implement edit logic
                },
                icon: const Icon(Icons.edit, color: Color(0xFF9EAAAF)),
                splashRadius: 24,
              ),
              IconButton(
                onPressed: () {
                  // TODO: Implement delete logic
                },
                icon: const Icon(Icons.delete, color: Color(0xFF9EAAAF)),
                splashRadius: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
