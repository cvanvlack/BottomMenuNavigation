import 'package:bottom_menu_navigation/core/application/page_notifier.dart';
import 'package:bottom_menu_navigation/core/presentation/routes/app_router.gr.dart';
import 'package:bottom_menu_navigation/core/shared/providers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  ref.read(pageStateNotifierProvider.notifier).pageState =
      const PageState.feedPage();

  return unit;
});

class AppWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_) {});
    return MaterialApp.router(
      title: 'Perfect Gift',
      routerDelegate: ref.read(appRouterProvider).delegate(),
      routeInformationParser: ref.read(appRouterProvider).defaultRouteParser(),
    );
  }
}
