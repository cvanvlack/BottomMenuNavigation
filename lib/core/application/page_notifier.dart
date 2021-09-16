import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'page_notifier.freezed.dart';

@freezed
class PageState with _$PageState {
  const PageState._();
  const factory PageState.feedPage() = _FeedPage;
  const factory PageState.searchPage() = _SearchPage;
  const factory PageState.buyPage() = _BuyPage;
  const factory PageState.messagesPage() = _MessagesPage;
  const factory PageState.profilePage() = _ProfilePage;
}

class PageNotifier extends StateNotifier<PageState> {
  //initializing with PageState.feedPage for the feed view.
  PageNotifier() : super(const PageState.feedPage());

  set pageState(PageState value) {
    super.state = value;
  }

  PageState get pageState {
    return state;
  }
}
