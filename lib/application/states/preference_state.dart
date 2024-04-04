import 'package:freezed_annotation/freezed_annotation.dart';

part 'preference_state.freezed.dart';
part 'preference_state.g.dart';

@freezed
class PreferenceState with _$PreferenceState {
  const factory PreferenceState({
    String? preference,
  }) = _PreferenceState;

  factory PreferenceState.fromJson(Map<String, Object?> json) =>
      _$PreferenceStateFromJson(json);

  factory PreferenceState.initial() => const PreferenceState(
        preference: ''
      );
}