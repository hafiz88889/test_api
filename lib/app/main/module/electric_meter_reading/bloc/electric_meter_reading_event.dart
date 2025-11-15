import 'package:equatable/equatable.dart';

import '../../../core/model/request_body.dart';
import '../models/electric_meter_for_edit.dart';

abstract class ElectricMeterEvent extends Equatable{}


class LoadElectricMeter extends ElectricMeterEvent{
  final RequestBody requestBody;

  LoadElectricMeter({required this.requestBody});

  @override
  // TODO: implement props
  List<Object?> get props => [requestBody];
}

class SubmitElectricMeter extends ElectricMeterEvent{
  final electricMeterModel;
  final bool isForSave;
  final Function(String msg)onEventSuccess;
  final Function(bool isLoading)onEventLoading;
  final Function(String)onEventError;

  SubmitElectricMeter(
      {required this.electricMeterModel, required this.isForSave, required this.onEventSuccess, required this.onEventLoading, required this.onEventError});

  @override
  // TODO: implement props
  List<Object?> get props => [electricMeterModel,isForSave,onEventSuccess,onEventLoading,onEventError];
}

class EditElectricMeter extends ElectricMeterEvent{
  final int? id;
  final Function(ElectricMeterForEdit electricMeterForEdit) getInitiable;

  EditElectricMeter({this.id, required this.getInitiable});
  @override
  // TODO: implement props
  List<Object?> get props => [id,getInitiable];
}