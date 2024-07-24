import 'package:flutter/material.dart';

class StepCircle extends StatelessWidget {
  const StepCircle(this.step, {
    this.foregroundColor,
    this.backgroundColor,
    super.key,
  });

  final int step;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? theme.colorScheme.primaryContainer,
      ),
      alignment: Alignment.center,
      child: Text(
        step.toString(),
        style: theme.textTheme.labelLarge?.copyWith(
          color: foregroundColor ?? theme.colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
