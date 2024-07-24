import 'package:flutter/material.dart';

class RecipeBadge extends StatelessWidget {
  const RecipeBadge({
    required this.icon,
    required this.label,
    this.color,
    super.key,
  });

  final IconData icon;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? theme.colorScheme.surfaceContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 12,
          ),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
    );
  }
}
