


import 'building_model.dart';

class BuildingForEdit {
  BuildingModel? _building;

  BuildingForEdit({BuildingModel? building}) {
    if (building != null) {
      this._building = building;
    }
  }

  BuildingModel? get building => _building;
  set building(BuildingModel? building) => _building = building;

  BuildingForEdit.fromJson(Map<String, dynamic> json) {
    _building = json['building'] != null
        ? new BuildingModel.fromJson(json['building'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._building != null) {
      data['building'] = this._building!.toJson();
    }
    return data;
  }
}

