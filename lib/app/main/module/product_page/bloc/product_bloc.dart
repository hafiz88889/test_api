import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_new_app/app/main/core/constants/app_constant.dart';
import 'package:test_new_app/app/main/core/services/custom_http_client.dart';
import 'package:test_new_app/app/main/module/product_page/bloc/product_event.dart';
import 'package:test_new_app/app/main/module/product_page/bloc/product_state.dart';
import 'package:test_new_app/app/main/module/product_page/model/product_model.dart';

import '../../../core/model/base_result_model.dart';
import '../../../core/model/common_response_object.dart';
import '../../electric_meter_reading/models/electric_meter_reading_model.dart';
import '../services/product_services.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState>{
  ProductServices productServices =ProductServices(

    http: CustomHttpClient(),
    url: "${AppConstant.Base_Api_Url}",);
  ProductBloc():super(ProductState()){
    on<LoadProduct>((event, emit) async {
      emit(state.copyWith(productStatus: ProductStatus.loading));
      try {
        final productList = await productServices.getProducts();
        emit(state.copyWith(
          productStatus: ProductStatus.success,
          productList: productList,
        ));
      } catch (ex) {
        emit(state.copyWith(productStatus: ProductStatus.error, error: ex.toString()));
      }
    });


  }
}