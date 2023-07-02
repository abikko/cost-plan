import 'package:cost_plan/core/presentation/screen_state.dart';
import 'package:cost_plan/presentation/base/base_state_notifier.dart';
import 'package:cost_plan/presentation/screen/home/home_state.dart';

class HomeNotifier extends BaseStateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState(screenState: ScreenState.loaded));

  @override
  Future<void> init() async {}
}
