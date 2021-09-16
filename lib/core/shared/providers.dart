import 'package:bottom_menu_navigation/core/application/page_notifier.dart';
import 'package:bottom_menu_navigation/core/presentation/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pageStateNotifierProvider =
    StateNotifierProvider<PageNotifier, PageState>((ref) => PageNotifier());

final appRouterProvider = Provider((ref) => AppRouter());
