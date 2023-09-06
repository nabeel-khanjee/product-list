import 'package:provider_app/src/app/app_export.dart';
part 'animated_drawer_cubit.freezed.dart';

class AnimatedDrawerCubit extends Cubit<AnimatedDrawerState> {
  AnimatedDrawerCubit() : super(const _Initial());

  void getDashBoardOverview(context,
      {required PageController pageController,
        required AdvancedDrawerController advancedDrawerController}) {
    _advancedDrawerController = advancedDrawerController;

    emit(const _Loading());
    emit(_Loaded(pageController));
    return;
  }

  Future<void> updateIndex(
      {required int index,
        required bool isOpen,
        required AdvancedDrawerController advancedDrawerController}) async {
    _bottomNavIndex = index;
    _advancedDrawerController = advancedDrawerController;

    emit(
      _AnimatedDrawerIndexUpdated(index, isOpen),
    );
  }

  int _bottomNavIndex = 0;
  AdvancedDrawerController _advancedDrawerController =
  AdvancedDrawerController();
  final PageController _pageController = PageController();

  int get getBottomNavIndex => _bottomNavIndex;
  AdvancedDrawerController get advancedDrawerController =>
      _advancedDrawerController;
  PageController get pageController => _pageController;
}

@freezed
class AnimatedDrawerState with _$AnimatedDrawerState {
  const factory AnimatedDrawerState.initial() = _Initial;

  const factory AnimatedDrawerState.loading() = _Loading;

  const factory AnimatedDrawerState.error(String message) = _Error;

  const factory AnimatedDrawerState.loaded(PageController pageController) =
  _Loaded;

  const factory AnimatedDrawerState.animatedDrawerIndexUpdated(
      int index,
      bool isOpen,
      ) = _AnimatedDrawerIndexUpdated;
}