import 'package:flutter/material.dart';

import '../../../domain/entities/subject.dart';

class SubjectCard extends StatelessWidget {
  final Subject subject;
  final VoidCallback onTap;

  const SubjectCard({super.key, required this.subject, required this.onTap});

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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            subject.name,
                            style: const TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A2B4A),
                              height: 1.35,
                              letterSpacing: 0.3,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            subject.code,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6D7FA3),
                            ),
                          ),
                        ],
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
                        Icon(
                          subject.isExpanded
                              ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          color: const Color(0xFF7185AB),
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
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Docente: ${subject.teacher} | Créditos: ${subject.credits}',
                          style: const TextStyle(
                            fontSize: 12.5,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4D5F83),
                          ),
                        ),
                        const SizedBox(height: 6),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1A2B4A),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Nota Final: ',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              TextSpan(
                                text: '${subject.score} / ${subject.total} ',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: subject.isApproved
                                    ? '(Aprobado)'
                                    : '(Reprobado)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: subject.isApproved
                                      ? const Color(0xFF2E8C49)
                                      : const Color(0xFFB03A2E),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 247, 251, 0.507),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFF99AAB8),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              _ScoreRow(
                                label: 'Parcial 1',
                                value: subject.breakdown.partial1,
                                isFirst: true,
                              ),
                              const Divider(
                                height: 1,
                                color: Color(0xFF99AAB8),
                                indent: 14,
                                endIndent: 14,
                              ),
                              _ScoreRow(
                                label: 'Parcial 2',
                                value: subject.breakdown.partial2,
                              ),
                              const Divider(
                                height: 1,
                                color: Color(0xFF99AAB8),
                                indent: 14,
                                endIndent: 14,
                              ),
                              _ScoreRow(
                                label: 'Trabajos Practicos',
                                value: subject.breakdown.practicalWorks,
                              ),
                              const Divider(
                                height: 1,
                                color: Color(0xFF99AAB8),
                                indent: 14,
                                endIndent: 14,
                              ),
                              _ScoreRow(
                                label: 'Examen Final',
                                value: subject.breakdown.finalExam,
                              ),
                              const Divider(
                                height: 1,
                                color: Color(0xFF99AAB8),
                                indent: 14,
                                endIndent: 14,
                              ),
                              _ScoreRow(
                                label: 'Asistencia',
                                value: subject.breakdown.attendance,
                                isLast: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  crossFadeState: subject.isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 220),
                  sizeCurve: Curves.easeInOut,
                ),
              ],
            ),
          ),
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

class _ScoreRow extends StatelessWidget {
  final String label;
  final int value;
  final bool isFirst;
  final bool isLast;

  const _ScoreRow({
    required this.label,
    required this.value,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(14, isFirst ? 10 : 8, 14, isLast ? 10 : 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$label:',
              style: const TextStyle(fontSize: 13, color: Color(0xFF394B6C)),
            ),
          ),
          Text(
            '$value',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A2B4A),
            ),
          ),
        ],
      ),
    );
  }
}
