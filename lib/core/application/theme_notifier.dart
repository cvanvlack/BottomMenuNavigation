import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'theme_notifier.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();
  const factory ThemeState.dark() = _Dark;
  const factory ThemeState.light() = _Light;
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  //initializing with Themestate.dark for the feed view.
  ThemeNotifier() : super(const ThemeState.dark());

  void setDarkTheme() => state = const ThemeState.dark();
  void setLightTheme() => state = const ThemeState.light();

  ThemeState get themeState => state;
}
