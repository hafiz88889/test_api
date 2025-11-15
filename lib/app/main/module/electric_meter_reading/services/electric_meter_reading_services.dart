import 'package:test_new_app/app/utils/shared_prefference_helper.dart';

import '../../../core/model/base_result_model.dart';
import '../../../core/model/common_response_object.dart';
import '../../../core/model/request_body.dart';
import '../../../core/services/app_croude_services.dart';
import '../../../core/services/custom_http_client.dart';
import '../models/electric_meter_for_edit.dart';
import '../models/electric_meter_reading_model.dart';

class ElectricMeterServices extends AppCrudService<ElectricMeterModel> {
  final CustomHttpClient http;
  final String url;

  ElectricMeterServices({required this.http, required this.url})
      :super(httpClient: http, uri: url);

  Future<CommonResponseObject<Result<ElectricMeterModel>>> getAllElectricMeter({required RequestBody requestBody}) async {
    final response = await httpClient.post(uri: "${url}GetElectricMeterReading", data: requestBody.toJson(), token: await SharedPreferenceHelper.getToken());
    print("Respone Electric Meter ${response}");
    return CommonResponseObject<Result<ElectricMeterModel>>.fromJson(response, (resultJson) => Result.fromJson(resultJson, (json) => ElectricMeterModel.fromJson(json),));
  }
  Future<CommonResponseObject<ElectricMeterForEdit>> getElectricMeterForEdit({required int id}) async{
    final response = await httpClient.post(uri: "${url}GetElectricMeterReadingForEdit", data: {"id":id},token: await SharedPreferenceHelper.getToken());
    return CommonResponseObject<ElectricMeterForEdit>.fromJson(response,(resultJson) => ElectricMeterForEdit.fromJson(resultJson));
  }
}