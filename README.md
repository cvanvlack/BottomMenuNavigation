# bottom_menu_navigation

This project is for prototyping some basic bottom bar navigation using `riverpod`, `auto_route` and `freezed` combined with `BottomNavigationBar`.

The application has 5 icons in a `BottomNavigationBar` that is to be present across all pages. Tapping one of the icons will take you to the corresponding page. There is a requirement that the theme of the page and the navigation bar changes from light to dark depending on which page you are on.

This means we need to keep track of the `pageState`, and we need to provide both the `AppRouter` and the `pageState` to the `BottomNavigationBar`.

![FeedPage](Screenshot%20-%20Feed.PNG)
![MessagesPage](Screenshot%20-%20Messages.PNG)


## Current Issues

- Despite setting the `pageState` to `feedPage` on initialization, the app is showing the wrong theme (light instead of dark).
- pushing the buttons on the `BottomNavigationBar` doesn't replace the pages when calling `ref.read(appRouterProvider).replace()`
- Not sure the appropriate way to listen/read to the `pageState` and then map to the corresponding button index.
