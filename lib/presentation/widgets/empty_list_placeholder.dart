import 'package:flutter/material.dart';

class EmptyListPlaceholder extends StatelessWidget {
  const EmptyListPlaceholder({
    required this.icon,
    required this.text,
    super.key,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    // `RefreshIndicator` does not work with non-scrollable widgets
    // So we use `CustomScrollView` with `AlwaysScrollableScrollPhysics` here
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverEmptyListPlaceholder(
          icon: icon,
          text: text,
        ),
      ],
    );
  }
}

class SliverEmptyListPlaceholder extends StatelessWidget {
  const SliverEmptyListPlaceholder({
    required this.icon,
    required this.text,
    super.key,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48),
            const SizedBox(height: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
