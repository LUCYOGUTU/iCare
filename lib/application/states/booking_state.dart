import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';
part 'booking_state.g.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'patient') String? patient,
    @JsonKey(name: 'doctor') String? doctor,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'endTime') String? endTime,
    List<dynamic>? appointmentList,
  }) = _BookingState;

  factory BookingState.fromJson(Map<String, Object?> json) =>
      _$BookingStateFromJson(json);

  factory BookingState.initial() => const BookingState(
        id: '',
        patient: '',
        doctor: '',
        date: '',
        startTime: '',
        endTime: '',
      );
}
