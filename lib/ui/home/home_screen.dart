import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/config/theme/theme_provider.dart';
import 'package:fitnest/ui/home/home_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen(this.viewModel, {super.key});

  final HomeScreenVM viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = context.palette;
    final typography = context.typography;
    final currentThemeMode = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: typography.h3),
        actions: [
          IconButton(
            icon: Icon(
              currentThemeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              ref
                  .read(appThemeProvider.notifier)
                  .setTheme(
                    currentThemeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light,
                  );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Heading 1', style: typography.h1),
              SizedBox(height: 16),
              Text('Heading 2', style: typography.h2),
              SizedBox(height: 16),
              Text('Heading 3', style: typography.h3),
              SizedBox(height: 16),
              Text('Subtitle', style: typography.subtitle),
              SizedBox(height: 16),
              Text('Large Text', style: typography.largeText),
              SizedBox(height: 16),
              Text('Medium Text', style: typography.mediumText),
              SizedBox(height: 16),
              Text('Small Text', style: typography.smallText),
              SizedBox(height: 16),
              Text('Caption', style: typography.caption),
              SizedBox(height: 32),
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  gradient: palette.primaryGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Primary Gradient',
                    style: typography.subtitle.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  gradient: palette.secondaryGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Secondary Gradient',
                    style: typography.subtitle.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  viewModel.logout();
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
