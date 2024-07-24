import 'package:flutter/material.dart';
import 'package:recipe_book_app/presentation/utils/theme_mode_name.dart';
import 'package:recipe_book_app/presentation/widgets/selectable_option.dart';

class ThemeChooserBottomSheet extends StatefulWidget {
  const ThemeChooserBottomSheet({
    required this.initial,
    required this.onSelected,
    this.closeOnSelect = true,
    super.key,
  });

  final ThemeMode initial;
  final void Function(ThemeMode theme) onSelected;
  final bool closeOnSelect;

  @override
  State<ThemeChooserBottomSheet> createState() =>
      _ThemeChooserBottomSheetState();
}

class _ThemeChooserBottomSheetState extends State<ThemeChooserBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bottomSheetAnimController;

  final _themes = [
    ThemeMode.system,
    ThemeMode.light,
    ThemeMode.dark,
  ];

  @override
  void initState() {
    super.initState();
    _bottomSheetAnimController = BottomSheet.createAnimationController(this);
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: true,
      animationController: _bottomSheetAnimController,
      onClosing: () {},
      builder: (context) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: _themes.length,
        itemBuilder: (context, index) {
          final theme = _themes[index];
          return SelectableOption(
            themeModeName(theme, context),
            isSelected: theme == widget.initial,
            onSelect: () {
              widget.onSelected(theme);
              if (widget.closeOnSelect) {
                Navigator.of(context).pop();
              }
            },
          );
        },
      ),
    );
  }
}
