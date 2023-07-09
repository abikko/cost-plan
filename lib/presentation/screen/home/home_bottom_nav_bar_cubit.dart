import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBottomNavBarCubit extends Cubit<int> {
  HomeBottomNavBarCubit() : super(0);

  void onTabChanged(int index) {
    emit(index);
  }
}