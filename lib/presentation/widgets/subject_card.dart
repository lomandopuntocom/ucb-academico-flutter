import 'package:flutter/material.dart';

import '../../../domain/entities/subject.dart';

class SubjectCard extends StatelessWidget {
  final Subject subject;

  const SubjectCard({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF4E0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    subject.icon,
                    color: subject.iconColor,
                    size: 26,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    subject.name,
                    style: const TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A2B4A),
                      height: 1.35,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${subject.score}',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1A2B4A),
                              height: 1,
                            ),
                          ),
                          const TextSpan(
                            text: '/100',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8899BB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: subject.progress,
                minHeight: 5,
                backgroundColor: const Color(0xFFEEF2F8),
                valueColor: AlwaysStoppedAnimation<Color>(
                  _progressColor(subject.score),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _progressColor(int score) {
    if (score >= 85) return const Color(0xFFE8A020);
    if (score >= 75) return const Color(0xFFD4901A);
    return const Color(0xFFC07810);
  }
}
