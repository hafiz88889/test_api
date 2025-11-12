import 'package:flutter/cupertino.dart';
import 'package:test_new_app/app/main/core/model/common_response_list.dart';
import 'package:test_new_app/app/main/core/model/common_response_object.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';
import 'package:test_new_app/app/main/module/splash_screen/model/building_for_edit.dart';
import 'package:test_new_app/app/main/module/splash_screen/model/building_model.dart';
import 'package:test_new_app/app/main/module/splash_screen/model/person_combobox_model.dart';
import 'package:test_new_app/app/utils/shared_prefference_helper.dart';

import '../../../core/services/app_croude_services.dart';

class BuildingServices extends AppCrudServices<BuildingModel>{
  final CustomHttpClient httpClient;
  final String uri;
  BuildingServices({required this.httpClient, required this.uri}):super(httpClient: httpClient, uri: uri);

  Future<CommonResponseObject<BuildingForEdit>>getBuildingForEdit ({required int id})async{
    final response= await httpClient.post(uri: "${uri}GetBuildingForEdit", data: {"id":id},token:  await SharedPreferenceHelper.getToken());
    debugPrint("Building Response${response}");
    return CommonResponseObject<BuildingForEdit>.fromJson(response,(resultJson)=>BuildingForEdit.fromJson(resultJson));
  }

  Future<CommonResponseList<PersonComboboxModel>> getPersonComboboxList()async{
    final response= await httpClient.post(uri: "${uri}GetPersonListForCombobox", data: {},token: await SharedPreferenceHelper.getToken());
    debugPrint("${response}");
    return CommonResponseList<PersonComboboxModel>.fromJson(response,(resultJson)=>PersonComboboxModel.fromJson(resultJson));
  }
}
