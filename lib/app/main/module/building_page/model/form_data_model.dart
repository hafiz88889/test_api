import 'package:test_new_app/app/main/module/building_page/model/person_combobox_model.dart';

class BuildingFormDataModel<T>{
  List<PersonComboboxModel>? personList;
  T? objectModel;
  BuildingFormDataModel({this.personList, this.objectModel});
}