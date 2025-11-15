import 'package:flutter/cupertino.dart';
import 'package:test_new_app/app/main/core/model/base_result_model.dart';
import 'package:test_new_app/app/main/core/model/common_response_object.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';

import '../../../utils/shared_prefference_helper.dart';
import '../model/common_response_list.dart';


class AppCrudService<T>{
  final CustomHttpClient httpClient;
  final String uri;
  AppCrudService({required  this.httpClient,required this.uri});
  Future<CommonResponseObject<Result<T>>> getPageableData({required String endpoint, required RequestBody requestBody,required T Function(Map<String, dynamic>) fromJsonT}) async{
    final response = await httpClient.post(uri: "$uri$endpoint", data: requestBody.toJson(),token: await SharedPreferenceHelper.getToken());
    debugPrint("Pageable Response : $response");
    return CommonResponseObject<Result<T>>.fromJson(response, (resultJson) => Result.fromJson(resultJson, fromJsonT),);
  }

  Future<CommonResponseObject<String>> saveInfo({required Map<String,dynamic> body,required String endPoint}) async{
    final response = await httpClient.post(uri: "$uri$endPoint", data: body,token: await SharedPreferenceHelper.getToken());
    print(response);
    return CommonResponseObject<String>.fromJson(response,(resultJson) => resultJson as String) ;
  }
}
