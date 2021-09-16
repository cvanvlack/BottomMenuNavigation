import 'package:bottom_menu_navigation/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// final initializationProvider = FutureProvider<Unit>((ref) async {
//   ref.read(pageStateNotifierProvider.notifier).pageState =
//       const PageState.feedPage();

//   return unit;
// });

class AppWidget extends ConsumerWidget {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
//    ref.listen(initializationProvider, (_) {});
    return MaterialApp.router(
      title: 'Perfect Gift',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}