import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:recipe_book_app/presentation/localizations/app_localizations.dart';

class SliverErrorPlaceholder extends StatelessWidget {
  const SliverErrorPlaceholder({
    required this.retryOnError,
    super.key,
  });

  final VoidCallback? retryOnError;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(PhosphorIconsRegular.warningCircle),
            const SizedBox(height: 8),
            Text(
              tr.couldNotLoadError,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (retryOnError != null)
              TextButton(
                onPressed: retryOnError,
                child: Text(tr.retryAction),
              ),
          ],
        ),
      ),
    );
  }
}
