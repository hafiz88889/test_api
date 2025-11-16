import 'package:equatable/equatable.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';

abstract class ProductEvent extends Equatable{}

class LoadProduct extends ProductEvent{
  final RequestBody requestBody;
  LoadProduct({ required this.requestBody});


  @override
  // TODO: implement props
  List<Object?> get props => [requestBody];}