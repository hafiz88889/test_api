import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_constant.dart';
import '../../../core/model/base_result_model.dart';
import '../../../core/model/common_response_object.dart';
import '../../../core/services/custom_http_client.dart';
import '../models/electric_meter_for_edit.dart';
import '../models/electric_meter_reading_model.dart';
import '../services/electric_meter_reading_services.dart';
import 'electric_meter_reading_event.dart';
import 'electric_meter_reading_state.dart';


class ElectricMeterBloc extends Bloc<ElectricMeterEvent, ElectricMeterState> {
  ElectricMeterServices electricMeterServices = ElectricMeterServices(
    http: CustomHttpClient(),
    url: "${AppConstant.Base_Api_Url}services/app/electricMeterReading/",);
  ElectricMeterBloc():super(ElectricMeterState()){
    on<LoadElectricMeter>((event, emit)async{
      emit (state.copyWith(electricMeterStatus: ElectricMeterStatus.loading));
      try{
        CommonResponseObject<Result<ElectricMeterModel>>response =await electricMeterServices.getPageableData(endpoint: "GetElectricMeterReading", requestBody: event.requestBody, fromJsonT: (json)=>ElectricMeterModel.fromJson(json));
        if(response.success??false){
          emit(state.copyWith(
            electricMeterStatus : ElectricMeterStatus.success,
            electricMeterList: response.result?.itemList??[],
            totalCount: response.result?.totalCount??0,
            requestBody: event.requestBody,
          ),
          );
        }
        else{
          throw Exception(response.error?.message??"Somethings Went Wrong");
        }
      } catch(ex){
        debugPrint("Exception FOR $ex");
        emit (state.copyWith(electricMeterStatus: ElectricMeterStatus.error,error: ex.toString()));
      }
    });
    on<SubmitElectricMeter>((event, emit) async {
      event.onEventLoading(true);
      try {
        //emit(state.copyWith(personPageStatus: PersonPageStatus.loading));
        CommonResponseObject<String> responseObject = await electricMeterServices
            .saveInfo(
            body: event.electricMeterModel.toJson(), endPoint:  event.isForSave? "CreateElectricMeterReading":"UpdateElectricMeterReading");

        if (responseObject.success ?? false) {
          event.onEventLoading(false);
          event.onEventSuccess("Save Successfully");
        }else{
          throw Exception(responseObject.error?.message??"Something Went Wrong");
        }
      }
      catch(ex){
        event.onEventLoading(false);
        event.onEventError(ex.toString());

        debugPrint("EXCETION FOR SAVEING $ex");
      }

    });

    on<EditElectricMeter>((event, emit)async {
      try{
        CommonResponseObject<ElectricMeterForEdit> responseModel = await electricMeterServices.getElectricMeterForEdit(id: event.id??0);
        if(responseModel.success??false){
          event.getInitiable(responseModel.result??ElectricMeterForEdit(),);

        }
      }catch(ex){
        debugPrint(ex.toString());
      }
    });
  }
}
