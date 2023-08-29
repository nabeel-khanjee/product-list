import 'package:provider_app/src/app/app_export.dart';
part 'is_gradient_background_cubit.freezed.dart';

class IsGradientBackgroundCubit extends Cubit<IsGradientBackgroundState> {
  IsGradientBackgroundCubit() : super(const _Initial());

  updateState({required Color color}) {
    emit(_UpdateColorState(color));
  }

  updateStateDarkLight({required bool value}) {
        emit(_UpdateThemeState(value));

  }
}

@freezed
class IsGradientBackgroundState with _$IsGradientBackgroundState {
  const factory IsGradientBackgroundState.initial() = _Initial;

  const factory IsGradientBackgroundState.loading() = _Loading;

  const factory IsGradientBackgroundState.error(String message) = _Error;

  const factory IsGradientBackgroundState.loaded() =
      _Loaded;

  const factory IsGradientBackgroundState.updateColorState(Color color) =
      _UpdateColorState;
      
  const factory IsGradientBackgroundState.updateStateDarkLight(bool value) =
      _UpdateThemeState;
      
}
