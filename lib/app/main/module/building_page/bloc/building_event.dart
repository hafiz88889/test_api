import 'package:equatable/equatable.dart';

import '../../../core/model/request_body.dart';
import '../model/building_for_edit.dart';
import '../model/person_combobox_model.dart';

abstract class BuildingEvent extends Equatable {}

class LoadBuilding extends BuildingEvent {
  final RequestBody requestBody;

  LoadBuilding({required this.requestBody});

  @override
  List<Object?> get props => [requestBody];
}

class SubmitBuildingInfo extends BuildingEvent{
  final buildingModel;
  final bool isForSave;
  final Function(String msg)onEventSuccess;
  final Function(bool isLoading)onEventLoading;
  final Function(String)onEventError;

  SubmitBuildingInfo(
      {required this.buildingModel, required this.isForSave, required this.onEventSuccess, required this.onEventLoading, required this.onEventError});

  @override
  // TODO: implement props
  List<Object?> get props => [buildingModel,isForSave,onEventSuccess,onEventLoading,onEventError];
}

class EditBuildingInfo extends BuildingEvent{
  final int? id;
  final Function(BuildingForEdit buildingForEdit ,List<PersonComboboxModel> personList) getInitialData;

  EditBuildingInfo({this.id,required this.getInitialData});
  @override
  // TODO: implement props
  List<Object?> get props => [id, getInitialData];
}