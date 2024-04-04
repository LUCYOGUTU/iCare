import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare_mobile/application/states/appointment_state.dart';
import 'package:icare_mobile/application/states/booking_state.dart';

part 'health_state.freezed.dart';
part 'health_state.g.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState({
    AppointmentState? appointmentState,
    BookingState? bookingState,
    // DoctorState? doctorState,
  }) = _HealthState;

  factory HealthState.fromJson(Map<String, Object?> json) =>
      _$HealthStateFromJson(json);

  factory HealthState.initial() => HealthState(
        appointmentState: AppointmentState.initial(),
        bookingState: BookingState.initial(),
        // doctorState: DoctorState.initial(),
      );
}