import 'package:flutter/cupertino.dart';
import 'package:test_new_app/app/main/core/model/common_response_list.dart';
import 'package:test_new_app/app/main/core/model/common_response_object.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';
import 'package:test_new_app/app/main/module/building_page/model/person_combobox_model.dart';
import 'package:test_new_app/app/utils/shared_prefference_helper.dart';

import '../../../core/services/app_croude_services.dart';
import '../model/building_for_edit.dart';
import '../model/building_model.dart';

class BuildingService extends AppCrudService<BuildingModel> {
  final CustomHttpClient http;
  final String url;
  BuildingService({required this.http, required this.url,}) : super(httpClient: http, uri: url);

  Future<CommonResponseObject<BuildingForEdit>> getBuildingForEdit({required int id}) async{
    final response = await httpClient.post(uri: "${url}GetBuildingForEdit", data: {"id":id},token: await SharedPreferenceHelper.getToken());
    debugPrint("BUILDIN RESPONSE : ${response}");
    return CommonResponseObject<BuildingForEdit>.fromJson(response,(resultJson) => BuildingForEdit.fromJson(resultJson));
  }

  Future<CommonResponseList<PersonComboboxModel>> getPersonListForCombobox() async{
    final response = await httpClient.post(uri: "${url}GetPersonListForCombobox", data: {},token: await SharedPreferenceHelper.getToken());
    print(response);
    return CommonResponseList<PersonComboboxModel>.fromJson(response,(resultJson) => PersonComboboxModel.fromJson(resultJson));
  }

}
