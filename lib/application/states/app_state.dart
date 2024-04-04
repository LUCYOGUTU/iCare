import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare_mobile/application/states/auth_state.dart';
import 'package:icare_mobile/application/states/health_state.dart';
import 'package:icare_mobile/application/states/user_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AuthState? authState,
    UserState? userState,
    HealthState? healthState,
    @JsonKey(includeFromJson: false, includeToJson: false) Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, Object?> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        authState: AuthState.initial(),
        userState: UserState.initial(),
        healthState: HealthState.initial(),
        wait: Wait(),
      );
}