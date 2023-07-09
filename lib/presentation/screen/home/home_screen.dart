import 'package:cost_plan/presentation/screen/calendar_screen/calendar_screen.dart';
import 'package:cost_plan/presentation/screen/home/home_bottom_nav_bar_cubit.dart';
import 'package:cost_plan/presentation/screen/home/widgets/home_bottom_nav_bar.dart';
import 'package:cost_plan/presentation/screen/todo_cost_screen/todo_cost_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  bool isTodoCurrentTab(int index) => index == 0;

  String handleCurrentAppBarTitle(int index) =>
      isTodoCurrentTab(index) ? 'Todo for Cost' : 'Calendar for cost planning';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBottomNavBarCubit(),
      child: BlocBuilder<HomeBottomNavBarCubit, int>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(handleCurrentAppBarTitle(state))),
            body: IndexedStack(
              index: state,
              children: const [
                TodoCostScreen(),
                CalendarScreen(),
              ],
            ),
            bottomNavigationBar: HomeBottomNavBar(
              currentIndex: state,
              onTap: context.read<HomeBottomNavBarCubit>().onTabChanged,
            ),
          );
        },
      ),
    );
  }
}
