import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SelectableOption extends StatelessWidget {
  const SelectableOption(
    this.label, {
    required this.isSelected,
    required this.onSelect,
    super.key,
  });

  final bool isSelected;
  final VoidCallback onSelect;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onSelect,
      leading: isSelected
          ? const Icon(PhosphorIconsRegular.check)
          : const SizedBox.square(dimension: 24),
      title: Text(label),
    );
  }
}
