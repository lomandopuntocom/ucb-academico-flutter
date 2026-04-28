import 'package:flutter/material.dart';

class SemesterCard extends StatelessWidget {
  final String semester;
  final int currentAverage;
  final int total;

  const SemesterCard({
    super.key,
    required this.semester,
    required this.currentAverage,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              semester,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A2B4A),
                letterSpacing: 0.3,
              ),
            ),
            const SizedBox(height: 4),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6D7FA3),
                ),
                children: [
                  const TextSpan(text: 'Promedio General: '),
                  TextSpan(
                    text: '$currentAverage',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1A2B4A),
                    ),
                  ),
                  TextSpan(text: ' / $total'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
