import 'package:equatable/equatable.dart';

import '../../../core/model/request_body.dart';
import '../models/electric_meter_reading_model.dart';

enum ElectricMeterStatus { initial, loading, success, error, onData }

class ElectricMeterState extends Equatable {
  final ElectricMeterStatus electricMeterStatus;
  final List<ElectricMeterModel>? electricMeterList;
  final RequestBody? requestBody;
  final int? totalCount;
  final String? error;

  const ElectricMeterState({
    this.electricMeterStatus = ElectricMeterStatus.initial,
    this.electricMeterList,
    this.requestBody,
    this.error,
    this.totalCount,
  });

  ElectricMeterState copyWith({
    ElectricMeterStatus? electricMeterStatus,
    List<ElectricMeterModel>? electricMeterList,
    RequestBody? requestBody,
    int? totalCount,
    String? error,
  }) {
    return ElectricMeterState(
      electricMeterStatus: electricMeterStatus ?? this.electricMeterStatus,
      electricMeterList: electricMeterList ?? this.electricMeterList,
      requestBody: requestBody ?? this.requestBody,
      error: error ?? this.error,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    electricMeterStatus,
    electricMeterList,
    requestBody,
    requestBody,
    totalCount,
    error,
  ];
}