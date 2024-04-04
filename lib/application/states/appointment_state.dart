import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_state.freezed.dart';
part 'appointment_state.g.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'patient') String? patient,
    @JsonKey(name: 'doctor') String? doctor,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
    List<dynamic>? appointmentList,
    List<dynamic>? hospitalList,
    List<dynamic>? updatesList,
    List<dynamic>? remarksList,
  }) = _AppointmentState;

  factory AppointmentState.fromJson(Map<String, Object?> json) =>
      _$AppointmentStateFromJson(json);

  factory AppointmentState.initial() => const AppointmentState(
        id: '',
        patient: '',
        doctor: '',
        date: '',
        startTime: '',
        endTime: '',
      );
}
