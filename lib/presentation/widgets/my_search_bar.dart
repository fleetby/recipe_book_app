import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({
    this.controller,
    this.focusNode,
    super.key,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  late final TextEditingController _controller;
  bool hasText = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _controller.addListener(_controllerListener);
  }

  @override
  void didUpdateWidget(covariant MySearchBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.controller?.removeListener(_controllerListener);
    _controller.addListener(_controllerListener);
  }

  void _controllerListener() {
    if (_controller.text.isNotEmpty != hasText) {
      setState(() => hasText = _controller.text.isNotEmpty);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = theme.brightness == Brightness.dark
        ? theme.colorScheme.surfaceDim
        : theme.colorScheme.surface;
    final tr = AppLocalizations.of(context);
    return Container(
      alignment: Alignment.center,
      height: 72,
      color: bgColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          focusNode: widget.focusNode,
          controller: _controller,
          decoration: InputDecoration(
            hintText: tr.searchForRecipesLabel,
            prefixIcon: const Icon(PhosphorIconsRegular.magnifyingGlass),
            suffixIcon: hasText
                ? IconButton(
                    onPressed: () => _controller.clear(),
                    icon: const Icon(PhosphorIconsRegular.x),
                  )
                : null,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }
}
