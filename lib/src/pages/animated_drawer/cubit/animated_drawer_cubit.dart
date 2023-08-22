import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider_app/src/app/app_export.dart';
part 'animated_drawer_cubit.freezed.dart';

class AnimatedDrawerCubit extends Cubit<AnimatedDrawerState> {
  AnimatedDrawerCubit() : super(const _Initial());

  getDashBoardOverview(context, {required PageController pageController}) {
    emit(const _Loading());
    emit(_Loaded(pageController));
  }

  int _bottomNavIndex = 0;

  Future<void> updateIndex({required int index, required bool isOpen}) async {
    _bottomNavIndex = index;
    emit(
      _AnimatedDrawerIndexUpdated(index, isOpen),
    );
  }

  int get getBottomNavIndex => _bottomNavIndex;
}

@freezed
class AnimatedDrawerState with _$AnimatedDrawerState {
  const factory AnimatedDrawerState.initial() = _Initial;

  const factory AnimatedDrawerState.loading() = _Loading;

  const factory AnimatedDrawerState.error(String message) = _Error;

  const factory AnimatedDrawerState.loaded(PageController pageController) =
      _Loaded;

  const factory AnimatedDrawerState.animatedDrawerIndexUpdated(
      int index, bool isOper) = _AnimatedDrawerIndexUpdated;
}
