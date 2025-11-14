import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:test_new_app/app/main/core/constants/app_constant.dart';
import 'package:test_new_app/app/main/core/model/common_response_object.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';
import 'package:test_new_app/app/main/module/splash_screen/model/building_model.dart';
import 'package:test_new_app/app/main/module/splash_screen/services/building_services.dart';

import '../../../core/model/base_result_model.dart';
import 'building_event.dart' show BuildingEvent, LoadBuilding;
import 'building_state.dart';

class BuildingBloc extends Bloc<BuildingEvent, BuildingState>{
  BuildingServices buildingServices= BuildingServices(
      httpClient: CustomHttpClient() ,
      uri: "${AppConstant.Base_Api_Url}/services/app/building",
  );
  BuildingBloc() : super(BuildingState()) {
    on<LoadBuilding>((event, emit) async {
      emit(state.copyWith(buildingStatus: BuildingStatus.loading));
      try{
        CommonResponseObject<Result<BuildingModel>> responseObject= await buildingServices.getPageableData(endpoint: "GetBuilding", requestBody:event.requestBody , fromJsonT: (json)=>BuildingModel.fromJson(json));
        emit(state.copyWith(
          buildingStatus: BuildingStatus.success,
          buildingList:  responseObject.result?.itemList??[],
          totalCount:  responseObject.result?.totalCount??0,
          requestBody: event.requestBody,
        ));
      }catch (ex) {
        emit(state.copyWith(buildingStatus: BuildingStatus.error,error: ex.toString()));
      }
    });



  }
}


// class BuildingBloc extends Bloc<BuildingEvent, BuildingState> {
//   BuildingService buildingService = BuildingService(
//     http: CustomHttpClient(),
//     url: "${AppConstant.BASE_API_URL}/services/app/building/",
//   );
//
//   BuildingBloc() : super(BuildingState()) {
//     on<LoadBuilding>((event, emit) async {
//       emit(state.copyWith(buildingStatus: BuildingStatus.loading));
//       try {
//         CommonResponseObject<Result<BuildingModel>> responseObject = await buildingService.getPageableData(endpoint: "GetBuilding", requestBody: event.requestBody, fromJsonT: (json) => BuildingModel.fromJson(json),);
//         emit(state.copyWith(
//           buildingStatus: BuildingStatus.success,
//           buildingList: responseObject.result?.itemList ?? [],
//           totalCount: responseObject.result?.totalCount??0,
//           requestBody: event.requestBody,
//         ),
//         );
//       } catch (ex) {
//         emit(state.copyWith(buildingStatus: BuildingStatus.error,error: ex.toString()));
//       }
//     });
//     on<SubmitBuildingInfo>((event, emit) async {
//       event.onEventLoading(true);
//       try {
//         //emit(state.copyWith(personPageStatus: PersonPageStatus.loading));
//         CommonResponseObject<String> responseObject = await buildingService
//             .saveInfo(
//             body: event.buildingModel.toJson(), endPoint: event.isForSave?"CreateBuilding":"UpdateBuilding");
//
//         if (responseObject.success ?? false) {
//           event.onEventLoading(false);
//           event.onEventSuccess("Save Successfully");
//         }else{
//           throw Exception(responseObject.error?.message??"Something Went Wrong");
//         }
//       }
//       catch(ex){
//         event.onEventLoading(false);
//         event.onEventError(ex.toString());
//
//         debugPrint("EXCETION FOR SAVEING $ex");
//       }
//
//     });
//
//     on<EditBuildingInfo>((event, emit)async {
//       try{
//         CommonResponseObject<BuildingForEdit> responseModel = await buildingService.getBuildingForEdit(id: event.id??0);
//         debugPrint("Response from BLoc : ${responseModel.toJson()}");
//         CommonResponseList<PersonComboboxModel> personResponse = await buildingService.getPersonListForCombobox();
//         //debugPrint("error 2");
//         if(personResponse.success??false){
//           event.getInitialData(responseModel.result??BuildingForEdit(),personResponse.result??[]);
//         }
//       }catch(ex){
//         debugPrint(ex.toString());
//       }
//     });
//   }
// }
