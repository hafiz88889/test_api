import 'package:equatable/equatable.dart';

import '../../../core/model/request_body.dart';
import '../model/building_model.dart';

enum BuildingStatus {initial,loading,success,error,onData}
class BuildingState extends Equatable{
  final BuildingStatus buildingStatus;
  final List<BuildingModel>?buildingList;
  final RequestBody? requestBody;
  final int? totalCount;
  final String? error;

  const BuildingState({this.buildingStatus = BuildingStatus.initial,
    this.buildingList,
    this.requestBody,
    this.totalCount,
    this.error});

  BuildingState copyWith({
    BuildingStatus? buildingStatus,
    List<BuildingModel>? buildingList,
    RequestBody? requestBody,
    int? totalCount,
    String? error,
  }){
    return BuildingState(
      buildingStatus: buildingStatus?? this.buildingStatus,
      buildingList:  buildingList?? this.buildingList,
      requestBody:  requestBody?? this.requestBody,
      totalCount: totalCount?? this.totalCount,
      error:  error?? this.error,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [buildingStatus,buildingList,requestBody,totalCount,error];
}