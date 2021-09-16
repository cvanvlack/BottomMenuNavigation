import 'package:bottom_menu_navigation/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(
      ProviderScope(
        child: AppWidget(),
      ),
    );
