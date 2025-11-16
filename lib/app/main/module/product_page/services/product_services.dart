import 'package:test_new_app/app/main/module/product_page/model/product_model.dart';
import 'package:test_new_app/app/utils/shared_prefference_helper.dart';

import '../../../core/model/base_result_model.dart';
import '../../../core/model/common_response_object.dart';
import '../../../core/model/request_body.dart';
import '../../../core/services/app_croude_services.dart';
import '../../../core/services/custom_http_client.dart';
import '../../electric_meter_reading/models/electric_meter_reading_model.dart';

class ProductServices extends AppCrudService<ProductModel> {
  final CustomHttpClient http;
  final String url;
  ProductServices({required this.http, required this.url}) :super(httpClient: http, uri: url);

  Future<List<ProductModel>> getProducts() async {final response = await httpClient.get(uri: "$url/products");
  // response is List<dynamic>
  List<ProductModel> products = (response as List).map((item) => ProductModel.fromJson(item)).toList();
  return products;
  }
  }


// Future<CommonResponseObject<Result<ProductModel>>> getProduct({required RequestBody requestBody}) async {
  //   final response = await httpClient.post(uri: "${url}products", data: requestBody.toJson(), token: await SharedPreferenceHelper.getToken());
  //   print("Response ${response}");
  //   return CommonResponseObject<Result<ProductModel>>.fromJson(response, (resultJson) => Result.fromJson(resultJson, (json) => ProductModel.fromJson(json),));
  // }
