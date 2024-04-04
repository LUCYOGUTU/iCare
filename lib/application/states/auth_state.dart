import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare_mobile/application/states/preference_state.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    PreferenceState? preferenceState,
    bool? isLoggedIn,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);

  factory AuthState.initial() => AuthState(
        preferenceState: PreferenceState.initial(),
        isLoggedIn: false,
      );
}
