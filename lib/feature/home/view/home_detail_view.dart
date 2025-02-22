import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Home detail view
@RoutePage()
final class HomeDetailView extends StatelessWidget {
  /// Oluşturucusudur
  const HomeDetailView({required this.id, super.key});

  /// Id
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Detail View'),
      ),
      body: Center(
        child: Text('Home Detail View $id'),
      ),
    );
  }
}
