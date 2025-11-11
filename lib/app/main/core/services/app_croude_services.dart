import 'package:flutter/cupertino.dart';
import 'package:test_new_app/app/main/core/model/base_result_model.dart';
import 'package:test_new_app/app/main/core/model/common_response_object.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';

import '../../../utils/shared_prefference_helper.dart';

class AppCrudServices<T>{
final CustomHttpClient httpClient;
final String uri;
AppCrudServices({required this.httpClient, required this.uri});

Future <CommonResponseObject<Result<T>>> getPageableData({required String endpoint , required RequestBody requestBody, required T Function(Map<String, dynamic>) fromJsonT}) async{
  final response = await httpClient.post(uri: "$uri $endpoint", data: requestBody.toJson(),token:  await SharedPreferenceHelper.getToken());
  debugPrint("Pageable Respone : $response");
  return CommonResponseObject<Result<T>>.fromJson(response, (resultJson)=> Result.fromJson(resultJson, fromJsonT));
}


}