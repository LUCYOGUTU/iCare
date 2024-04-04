import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    String? firstName,
    String? lastName,
    String? email,
    int? phoneNumber,
    String? password1,
    String? password2,
    String? gender,
    String? dateOfBirth,
    bool? isPatient,
  }) = _UserState;

  factory UserState.fromJson(Map<String, Object?> json) =>
      _$UserStateFromJson(json);

  factory UserState.initial() => const UserState(
        firstName: '',
        lastName: '',
        email: '',
        phoneNumber: 0,
        password1: '',
        password2: '',
        gender: '',
        dateOfBirth: '',
        isPatient: false,
      );
}
