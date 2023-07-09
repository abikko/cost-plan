import 'package:cost_plan/core/presentation/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodoCostScreen extends StatelessWidget {
  const TodoCostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => context.go(AppRoutes.addTodo.path),
        icon: const Icon(Icons.add),
        label: const Text('Add ToDo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Container(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 0,
      ),
    );
  }
}
