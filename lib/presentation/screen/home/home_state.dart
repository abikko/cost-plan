import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/presentation/screen_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({required ScreenState screenState}) = _HomeState;
}
