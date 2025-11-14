import 'package:equatable/equatable.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';
import 'package:test_new_app/app/main/module/splash_screen/model/building_for_edit.dart';

import '../model/person_combobox_model.dart';

abstract class BuildingEvent extends Equatable{}

class LoadBuilding extends BuildingEvent{
  final RequestBody requestBody;

  LoadBuilding({ required this.requestBody});

  @override
  // TODO: implement props
  List<Object?> get props => [requestBody];
}

class SubmitBuilding extends BuildingEvent{
  final buildingModel;
  final bool isSave;
  final Function(String msg) onEventSuccess;
  final Function(String msg) onEventError;
  final Function(bool isLoading) onEventLoading;

  SubmitBuilding({required this.buildingModel, required this.isSave,required this.onEventSuccess, required this.onEventError, required this.onEventLoading});
  @override
  // TODO: implement props
  List<Object?> get props => [buildingModel, isSave,onEventSuccess,onEventError, onEventLoading];
}


class EditBuilding extends BuildingEvent{
final int id;
final Function(BuildingForEdit buildingForEdit, List<PersonComboboxModel> personList)getInitialData;

EditBuilding({required this.getInitialData, required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id, getInitialData];
}