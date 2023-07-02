import 'package:cost_plan/presentation/app/app_router.dart';
import 'package:flutter/material.dart';

class CostPlanApp extends StatefulWidget {
  const CostPlanApp({super.key});

  @override
  State<CostPlanApp> createState() => _CostPlanAppState();
}

class _CostPlanAppState extends State<CostPlanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}