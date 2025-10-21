import 'package:fitnest/ui/home/home_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen(this.viewModel, {super.key});

  final HomeScreenVM viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen', style: TextStyle(fontSize: 36)),
            ElevatedButton(
              onPressed: () {
                viewModel.logout();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
